.class public final Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStandardGuideLineRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StandardGuideLineRender.kt\ncom/onyx/android/sdk/note/common/handler/StandardGuideLineRender\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,195:1\n215#2,2:196\n1855#3,2:198\n1855#3,2:200\n1855#3,2:202\n1549#3:204\n1620#3,3:205\n1549#3:208\n1620#3,3:209\n766#3:212\n857#3:213\n858#3:215\n1855#3,2:216\n1855#3,2:226\n1655#3,8:228\n637#4:214\n637#4:221\n526#5:218\n511#5,2:219\n513#5,4:222\n*S KotlinDebug\n*F\n+ 1 StandardGuideLineRender.kt\ncom/onyx/android/sdk/note/common/handler/StandardGuideLineRender\n*L\n132#1:196,2\n141#1:198,2\n164#1:200,2\n179#1:202,2\n187#1:204\n187#1:205,3\n188#1:208\n188#1:209,3\n189#1:212\n189#1:213\n189#1:215\n190#1:216,2\n192#1:226,2\n193#1:228,8\n189#1:214\n191#1:221\n191#1:218\n191#1:219,2\n191#1:222,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00089\u0010:J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004J\u001c\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00022\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000f\u001a\u00020\u000eJ&\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0014J(\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\u000e\u0008\u0002\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001aJ(\u0010!\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001aH\u0002J\u0008\u0010\"\u001a\u00020\u0006H\u0002R\u0016\u0010\u001c\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\n0$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010%R\u001c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\n0$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010%R \u0010,\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00103\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u00105\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00102R\u001b\u0010\u001f\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u0008\'\u00108\u00a8\u0006;"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;",
        "",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "pointInRender",
        "",
        "action",
        "",
        "onPoint",
        "touchPointInRender",
        "",
        "Lcom/onyx/android/sdk/geometry/data/Guideline;",
        "guideLinesInRender",
        "update",
        "clear",
        "",
        "isDrawingGuideLine",
        "touchPoint",
        "lastPoint",
        "Landroid/graphics/RectF;",
        "boundRect",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;",
        "Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;",
        "consumeStickyDistance",
        "Landroid/graphics/Canvas;",
        "canvas",
        "guideLines",
        "",
        "strokeWidth",
        "drawGuideLines",
        "guideLine",
        "Landroid/graphics/Paint;",
        "paint",
        "extendLength",
        "b",
        "a",
        "Z",
        "",
        "Ljava/util/List;",
        "selfGuideLines",
        "c",
        "parallelGuideLines",
        "",
        "d",
        "Ljava/util/Map;",
        "parallelGuideLineStickPoints",
        "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;",
        "e",
        "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;",
        "touchVelocityTracker",
        "f",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "firstPoint",
        "g",
        "currentPoint",
        "h",
        "Lkotlin/Lazy;",
        "()Landroid/graphics/Paint;",
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
        "SMAP\nStandardGuideLineRender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StandardGuideLineRender.kt\ncom/onyx/android/sdk/note/common/handler/StandardGuideLineRender\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,195:1\n215#2,2:196\n1855#3,2:198\n1855#3,2:200\n1855#3,2:202\n1549#3:204\n1620#3,3:205\n1549#3:208\n1620#3,3:209\n766#3:212\n857#3:213\n858#3:215\n1855#3,2:216\n1855#3,2:226\n1655#3,8:228\n637#4:214\n637#4:221\n526#5:218\n511#5,2:219\n513#5,4:222\n*S KotlinDebug\n*F\n+ 1 StandardGuideLineRender.kt\ncom/onyx/android/sdk/note/common/handler/StandardGuideLineRender\n*L\n132#1:196,2\n141#1:198,2\n164#1:200,2\n179#1:202,2\n187#1:204\n187#1:205,3\n188#1:208\n188#1:209,3\n189#1:212\n189#1:213\n189#1:215\n190#1:216,2\n192#1:226,2\n193#1:228,8\n189#1:214\n191#1:221\n191#1:218\n191#1:219,2\n191#1:222,4\n*E\n"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->a:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->c:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->d:Ljava/util/Map;

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-direct {v1}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;-><init>()V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->e:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x7f

    const/4 v12, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x7f

    const/16 v23, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v23}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v1, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender$paint$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender$paint$2;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->h:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic drawGuideLines$default(Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;Landroid/graphics/Canvas;Ljava/util/List;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    iget-object p2, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->c:Ljava/util/List;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->drawGuideLines(Landroid/graphics/Canvas;Ljava/util/List;F)V

    return-void
.end method

.method public static synthetic onPoint$default(Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;Lcom/onyx/android/sdk/base/data/TouchPoint;IILjava/lang/Object;)V
    .locals 0

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->onPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getSupportHorizontalAlignment()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->getHorizontalGuideline()Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->isParallel(Lcom/onyx/android/sdk/geometry/data/Guideline;Lcom/onyx/android/sdk/geometry/data/Guideline;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getSupportVerticalAlignment()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->getVerticalGuideline()Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->isParallel(Lcom/onyx/android/sdk/geometry/data/Guideline;Lcom/onyx/android/sdk/geometry/data/Guideline;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object v4, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->d:Ljava/util/Map;

    iget-object v5, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->d:Ljava/util/Map;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/Guideline;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->c:Ljava/util/List;

    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/Guideline;Landroid/graphics/Paint;F)V
    .locals 6

    invoke-static {}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->getHorizontalGuideline()Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->isParallel(Lcom/onyx/android/sdk/geometry/data/Guideline;Lcom/onyx/android/sdk/geometry/data/Guideline;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->getVerticalGuideline()Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->isParallel(Lcom/onyx/android/sdk/geometry/data/Guideline;Lcom/onyx/android/sdk/geometry/data/Guideline;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/onyx/android/sdk/geometry/data/GuideLineKt;->stretch(Lcom/onyx/android/sdk/geometry/data/Guideline;Ljava/lang/Number;)Lcom/onyx/android/sdk/geometry/data/Guideline;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final c()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->a:Z

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final consumeStickyDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/RectF;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "touchPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;->Translate:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    iput-boolean v1, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->a:Z

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;->createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v2

    iget-object p4, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object p4, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/note/R$integer;->guideline_min_start_time:I

    invoke-virtual {p4, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iput-boolean v1, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->a:Z

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;->createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p3}, Lcom/onyx/android/sdk/base/extension/RectKt;->longerSize(Landroid/graphics/RectF;)F

    move-result p3

    sget v2, Lcom/onyx/android/sdk/note/R$dimen;->guideline_min_shape_size:I

    invoke-virtual {p4, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p4

    cmpg-float p3, p3, p4

    if-gez p3, :cond_2

    iput-boolean v1, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->a:Z

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;->createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->a:Z

    iget-object p4, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->e:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->getRealtimeVelocity()[F

    move-result-object p4

    const/4 v2, 0x2

    new-array v2, v2, [F

    aget v3, p4, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v2, v1

    aget p4, p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    aput p4, v2, p3

    invoke-static {v2}, Lorg/apache/commons/lang3/math/NumberUtils;->max([F)F

    move-result p4

    sget-object v2, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getGuidelineVelocityTriggerThreshold()F

    move-result v2

    cmpl-float p4, p4, v2

    if-lez p4, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;->createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p4, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->d:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;->createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p4, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p4, p2, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, p3

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v6, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v6, v4, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->componentAlongPerpendicularDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v4

    sget-object v6, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getGuidelineStickyDistanceForStandards()F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, p3

    goto :goto_0

    :cond_6
    invoke-virtual {p4, v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->componentAlongLineDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p4

    goto :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/Guideline;

    iget-object v4, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    sget-object p0, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->Companion:Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult$Companion;->createNonStickyResult(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-virtual {p4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->dx()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDx(F)V

    invoke-virtual {p4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->dy()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setDy(F)V

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;->setStickyState(Z)V

    return-object v0
.end method

.method public final drawGuideLines(Landroid/graphics/Canvas;Ljava/util/List;F)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
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
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;F)V"
        }
    .end annotation

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "guideLines"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/Guideline;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->c()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getGuidelineExtendLengthForParallel()F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float v3, p3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->b(Landroid/graphics/Canvas;Lcom/onyx/android/sdk/geometry/data/Guideline;Landroid/graphics/Paint;F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final isDrawingGuideLine()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->a:Z

    return p0
.end method

.method public final onPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pointInRender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->toMotionEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->e:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->e:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onRelease()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->f:Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->e:Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;->onDown(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method public final update(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
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
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/Guideline;",
            ">;)V"
        }
    .end annotation

    const-string v0, "touchPointInRender"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "guideLinesInRender"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->g:Lcom/onyx/android/sdk/base/data/TouchPoint;

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/handler/StandardGuideLineRender;->a()V

    return-void
.end method
