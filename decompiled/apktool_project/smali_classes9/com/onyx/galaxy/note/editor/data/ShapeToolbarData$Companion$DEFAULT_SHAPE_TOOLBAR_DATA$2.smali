.class final Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeToolbarData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolbarData.kt\ncom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,69:1\n1549#2:70\n1620#2,3:71\n*S KotlinDebug\n*F\n+ 1 ShapeToolbarData.kt\ncom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2\n*L\n12#1:70\n12#1:71,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShapeToolbarData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeToolbarData.kt\ncom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,69:1\n1549#2:70\n1620#2,3:71\n*S KotlinDebug\n*F\n+ 1 ShapeToolbarData.kt\ncom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2\n*L\n12#1:70\n12#1:71,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;-><init>()V

    .line 3
    sget-object v0, Lcom/onyx/galaxy/note/utils/ShapeToolUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/ShapeToolUtils;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/ShapeToolUtils;->getDefaultValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->setEnabledList(Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData$Companion$DEFAULT_SHAPE_TOOLBAR_DATA$2;->invoke()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    move-result-object p0

    return-object p0
.end method
