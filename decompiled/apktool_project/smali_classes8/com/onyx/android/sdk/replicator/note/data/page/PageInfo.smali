.class public final Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageInfo.kt\ncom/onyx/android/sdk/replicator/note/data/page/PageInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,332:1\n1#2:333\n1855#3,2:334\n1855#3,2:336\n*S KotlinDebug\n*F\n+ 1 PageInfo.kt\ncom/onyx/android/sdk/replicator/note/data/page/PageInfo\n*L\n276#1:334,2\n282#1:336,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010 \n\u0002\u0008\u000e\u0018\u0000 J2\u00020\u00012\u00020\u0002:\u0001JB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0010H\u0007J\u0010\u0010\u0017\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0005J\u0008\u0010\u0019\u001a\u00020\u0000H\u0016J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0096\u0002J\u0008\u0010\u001e\u001a\u00020\u0005H\u0007J\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u0010 \u001a\u00020\u0005J\u0006\u0010!\u001a\u00020\rJ\u0010\u0010\"\u001a\u0004\u0018\u00010\u00102\u0006\u0010#\u001a\u00020\u0005J\u0006\u0010$\u001a\u00020\u0005J\u0012\u0010%\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0018\u001a\u00020\u0005H\u0003J\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fJ\u0008\u0010\'\u001a\u00020(H\u0007J\u0008\u0010)\u001a\u0004\u0018\u00010\u0012J\u0006\u0010*\u001a\u00020\u0005J\u0006\u0010+\u001a\u00020\u0005J\u0008\u0010,\u001a\u00020\u001bH\u0007J\u0008\u0010-\u001a\u00020\u0005H\u0016J\u0010\u0010.\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0005H\u0007J\u0008\u0010/\u001a\u00020\u001bH\u0007J\u0008\u00100\u001a\u00020\u001bH\u0007J\u0008\u00101\u001a\u00020\u001bH\u0007J\u000e\u00102\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0005J\u0006\u00103\u001a\u00020\u001bJ\u0006\u00104\u001a\u00020\u001bJ\u0010\u00105\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0005H\u0007J\u0010\u00106\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0005H\u0007J\u0010\u00107\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0010H\u0003J\u0010\u00107\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0005H\u0007J\u0012\u00108\u001a\u00020\u00152\u0008\u00109\u001a\u0004\u0018\u00010\u0000H\u0007J\u0012\u00109\u001a\u00020\u00152\u0008\u0010:\u001a\u0004\u0018\u00010\u0000H\u0007J\u0014\u0010;\u001a\u00020\u00152\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00050=J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010@\u001a\u00020\u00152\u0006\u0010A\u001a\u00020\rJ\u0016\u0010B\u001a\u00020\u00152\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fJ\u000e\u0010C\u001a\u00020\u00002\u0006\u0010D\u001a\u00020(J\u0012\u0010E\u001a\u0004\u0018\u00010\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010F\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u0006\u0010G\u001a\u00020\u0015J\u0008\u0010H\u001a\u00020\u0012H\u0016J\u0006\u0010I\u001a\u00020\u0015R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006K"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
        "Ljava/io/Serializable;",
        "",
        "()V",
        "colorTheme",
        "",
        "getColorTheme",
        "()I",
        "setColorTheme",
        "(I)V",
        "currentLayerId",
        "height",
        "lastModifyTime",
        "",
        "layerList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
        "title",
        "",
        "width",
        "addLayerInfo",
        "",
        "layerInfo",
        "addNewLayerInfo",
        "layerId",
        "clone",
        "equals",
        "",
        "other",
        "",
        "getBottomLayerId",
        "getCurrentLayerId",
        "getHeight",
        "getLastModifyTime",
        "getLayer",
        "id",
        "getLayerCount",
        "getLayerInfo",
        "getLayerList",
        "getPageRect",
        "Landroid/graphics/Rect;",
        "getTitle",
        "getUnusedLayerId",
        "getWidth",
        "hasLockedLayer",
        "hashCode",
        "isBottomLayer",
        "isCurLayerBottom",
        "isCurLayerLocked",
        "isCurLayerVisible",
        "isCurrentLayerId",
        "isDarkTheme",
        "isEmpty",
        "isLayerLocked",
        "isLayerVisible",
        "layerInfoExist",
        "mergeLayerIfMissing",
        "mergePageInfo",
        "mergeInfo",
        "removeLayers",
        "srcLayersIds",
        "",
        "setCurrentLayerId",
        "setHeight",
        "setLastModifyTime",
        "time",
        "setLayerList",
        "setPageRect",
        "rect",
        "setTitle",
        "setWidth",
        "showAllLayers",
        "toString",
        "unlockAllLayers",
        "Companion",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nPageInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageInfo.kt\ncom/onyx/android/sdk/replicator/note/data/page/PageInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,332:1\n1#2:333\n1855#3,2:334\n1855#3,2:336\n*S KotlinDebug\n*F\n+ 1 PageInfo.kt\ncom/onyx/android/sdk/replicator/note/data/page/PageInfo\n*L\n276#1:334,2\n282#1:336,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private colorTheme:I

.field private currentLayerId:I

.field private height:I

.field private lastModifyTime:J

.field private layerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->Companion:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrentLayerId$p(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->currentLayerId:I

    return p0
.end method

.method public static synthetic addNewLayerInfo$default(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;IILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getUnusedLayerId()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->addNewLayerInfo(I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getLayerInfo(I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final layerInfoExist(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerInfoExist(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final addLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    const-string v0, "layerInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerInfoExist(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addNewLayerInfo(I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->setId(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->addLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    return-object v0
.end method

.method public clone()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.page.PageInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    .line 6
    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->clone()Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setLayerList(Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->clone()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->currentLayerId:I

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->currentLayerId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->width:I

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->width:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->height:I

    iget v3, p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->height:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->lastModifyTime:J

    iget-wide v5, p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->lastModifyTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->colorTheme:I

    iget p1, p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->colorTheme:I

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getBottomLayerId()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getColorTheme()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->colorTheme:I

    return p0
.end method

.method public final getCurrentLayerId()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->currentLayerId:I

    return p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->height:I

    return p0
.end method

.method public final getLastModifyTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->lastModifyTime:J

    return-wide v0
.end method

.method public final getLayer(I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    return-object v0
.end method

.method public final getLayerCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getLayerList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-direct {v3}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getUnusedLayerId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->setId(I)V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getPageRect()Landroid/graphics/Rect;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getUnusedLayerId()I
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    return v2

    :cond_2
    move v0, v2

    :goto_2
    const/16 v3, 0x14

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v4

    if-ne v4, v0, :cond_3

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    if-nez v3, :cond_5

    return v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return v2
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->width:I

    return p0
.end method

.method public final hasLockedLayer()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->Companion:Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$Companion;->hasLockedLayer(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->currentLayerId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->lastModifyTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->colorTheme:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isBottomLayer(I)Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getBottomLayerId()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurLayerBottom()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->isBottomLayer(I)Z

    move-result p0

    return p0
.end method

.method public final isCurLayerLocked()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->isLayerLocked(I)Z

    move-result p0

    return p0
.end method

.method public final isCurLayerVisible()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->isLayerVisible(I)Z

    move-result p0

    return p0
.end method

.method public final isCurrentLayerId(I)Z
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->currentLayerId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDarkTheme()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/data/ColorTheme;->INSTANCE:Lcom/onyx/android/sdk/base/data/ColorTheme;

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->colorTheme:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/data/ColorTheme;->isDarkTheme(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 4

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->width:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->height:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->lastModifyTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLayerLocked(I)Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerInfo(I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getLock()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLayerVisible(I)Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerInfo(I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getShow()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final layerInfoExist(I)Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerInfo(I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final mergeLayerIfMissing(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerInfo(I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->addLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final mergePageInfo(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        serialize = false
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->width:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setWidth(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    iget v0, p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->height:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setHeight(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getCurrentLayerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerInfo(I)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->addLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->mergeLayerInfo(Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final removeLayers(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "srcLayersIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$removeLayers$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$removeLayers$1;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$removeLayers$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo$removeLayers$2;-><init>(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->currentLayerId:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerInfoExist(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getId()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setLastModifyTime(J)V

    return-void
.end method

.method public final setColorTheme(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->colorTheme:I

    return-void
.end method

.method public final setCurrentLayerId(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->currentLayerId:I

    return-object p0
.end method

.method public final setHeight(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->height:I

    return-object p0
.end method

.method public final setLastModifyTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->lastModifyTime:J

    return-void
.end method

.method public final setLayerList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->layerList:Ljava/util/List;

    return-void
.end method

.method public final setPageRect(Landroid/graphics/Rect;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setWidth(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->setHeight(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final setWidth(I)Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->width:I

    return-object p0
.end method

.method public final showAllLayers()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->setShow(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageInfo{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlockAllLayers()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getLayerList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->setLock(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
