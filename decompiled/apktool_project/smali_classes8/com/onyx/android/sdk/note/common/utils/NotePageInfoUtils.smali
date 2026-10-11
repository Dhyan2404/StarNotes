.class public final Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotePageInfoUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageInfoUtils.kt\ncom/onyx/android/sdk/note/common/utils/NotePageInfoUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n1#2:301\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008@\u0010AJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u001a\u0010\r\u001a\u0004\u0018\u00010\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u0018\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u0016\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u0010\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0016J\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u0016\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u0016\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004J\u001c\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0016J\u0016\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u0016\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004J$\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00162\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0016J\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\"\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010$\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u0007J\u001e\u0010$\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0007J\u0018\u0010&\u001a\u00020\u000f2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u001e\u0010)\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0004J\u001e\u0010+\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u000fJ\u001e\u0010-\u001a\u00020\u001b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u000fJ\u0010\u0010.\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010/\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u00100\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u00101\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u00102\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u00103\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0004J\u0016\u00105\u001a\u00020\u000f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u000bJ\u0018\u00106\u001a\u00020\u000f2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u00107\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0004J\u0010\u00108\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010:\u001a\u0002092\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010;\u001a\u000209J\u0010\u0010=\u001a\u00020<2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0018\u0010:\u001a\u0002092\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010>\u001a\u00020\u000bJ\u0010\u0010?\u001a\u00020\u000f2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a8\u0006B"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "pageInfo",
        "",
        "a",
        "index",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "getLayerInfo",
        "Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;",
        "notePageInfo",
        "",
        "pageId",
        "getPageInfo",
        "getLayerCount",
        "",
        "isLayerVisibleByIndex",
        "layerId",
        "isLayerVisibleById",
        "isLayerLockedByIndex",
        "pageHasLockedLayer",
        "isCurrentLayerLocked",
        "",
        "layerIds",
        "checkLayersLocked",
        "getLayerInfoById",
        "getLayerIdByIndex",
        "",
        "removeLayerByIndex",
        "layerIdList",
        "removeLayerById",
        "getLayerIndexById",
        "getLayerIndexListByIds",
        "getMaxLayerId",
        "getLastLayer",
        "layerInfo",
        "insertLayer",
        "insertIndex",
        "hasLayer",
        "fromIndex",
        "toIndex",
        "moveLayer",
        "visible",
        "setLayerVisible",
        "lock",
        "setLayerLock",
        "getLastLayerInfo",
        "isCurrentLayerVisible",
        "getCurrentLayerIndex",
        "getCurrentLayerId",
        "getCurrentLayerName",
        "getLayerName",
        "name",
        "isLayerNameDuplicated",
        "isFirstLayer",
        "toPdfLayerId",
        "toNoteLayerId",
        "Landroid/graphics/Rect;",
        "getPageRect",
        "getMaxExpandPageRect",
        "Landroid/graphics/RectF;",
        "getPageRectF",
        "pageUniqueId",
        "isAllLayerHidden",
        "<init>",
        "()V",
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
        "SMAP\nNotePageInfoUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageInfoUtils.kt\ncom/onyx/android/sdk/note/common/utils/NotePageInfoUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n1#2:301\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLastLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p0

    return p0
.end method

.method public final checkLayersLocked(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Ljava/util/List;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
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
            "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerCount(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->isLayerLockedByIndex(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerInfoById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getLock()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_3
    return v2
.end method

.method public final getCurrentLayerId(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getCurrentLayerIndex(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerIndexById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)I

    move-result p0

    return p0
.end method

.method public final getCurrentLayerName(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLastLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    return-object p0
.end method

.method public final getLastLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    return-object p0
.end method

.method public final getLayerCount(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p0

    return p0
.end method

.method public final getLayerIdByIndex(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)I
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p0

    return p0
.end method

.method public final getLayerIndexById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)I
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerCount(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v2

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getLayerIndexListByIds(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
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
            "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerCount(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    return-object p0
.end method

.method public final getLayerInfoById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerIndexById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)I

    move-result p2

    if-ltz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerCount(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I

    move-result p0

    if-lt p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final getLayerName(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMaxExpandPageRect()Landroid/graphics/Rect;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getPageRect(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Landroid/graphics/Rect;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType;->Companion:Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/canvas/CanvasExpandType$Companion;->getMaxExpandMultiple()I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    mul-int/2addr v1, v0

    iput v1, p0, Landroid/graphics/Rect;->right:I

    return-object p0
.end method

.method public final getMaxLayerId(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public final getPageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "pageId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;->getPageInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getPageRect(Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageUniqueId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/NotePageInfo;->getPageInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getPageRect(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getPageRect(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Landroid/graphics/Rect;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, p0

    :goto_1
    if-gtz v0, :cond_2

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;->getDefaultPageWidth()I

    move-result v0

    :cond_2
    if-gtz p1, :cond_3

    .line 4
    sget-object p1, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->Companion:Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure$Companion;->getDefaultPageHeight()I

    move-result p1

    .line 5
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p0, p0, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public final getPageRectF(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getPageRect(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final hasLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final insertLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;ILcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerCount(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->hasLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final insertLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerCount(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->insertLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;ILcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-void
.end method

.method public final isAllLayerHidden(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getShow()Z

    move-result v0

    if-eqz v0, :cond_1

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final isCurrentLayerLocked(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerInfoById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getLock()Z

    move-result p0

    return p0
.end method

.method public final isCurrentLayerVisible(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->isLayerVisibleById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Z

    move-result p0

    return p0
.end method

.method public final isFirstLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public final isLayerLockedByIndex(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerCount(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I

    move-result p0

    if-lt p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getLock()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isLayerNameDuplicated(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isLayerVisibleById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->isLayerVisible(I)Z

    move-result p0

    return p0
.end method

.method public final isLayerVisibleByIndex(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getShow()Z

    move-result p0

    return p0
.end method

.method public final moveLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;II)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-void
.end method

.method public final pageHasLockedLayer(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public final removeLayerById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->getLayerIndexById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->removeLayerByIndex(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)V

    return-void
.end method

.method public final removeLayerById(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Ljava/util/List;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
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
            "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerIdList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/NotePageInfoUtils;->a(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    :cond_4
    :goto_1
    return-void
.end method

.method public final removeLayerByIndex(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerCount()I

    move-result p0

    if-lt p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final setLayerLock(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;IZ)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->setLock(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setLayerVisible(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;IZ)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pageInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->setShow(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toNoteLayerId(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final toPdfLayerId(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
