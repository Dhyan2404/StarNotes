.class public final Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotePageSave.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageSave.kt\ncom/onyx/android/sdk/note/common/document/page/NotePageSave\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,148:1\n215#2:149\n216#2:152\n1855#3,2:150\n*S KotlinDebug\n*F\n+ 1 NotePageSave.kt\ncom/onyx/android/sdk/note/common/document/page/NotePageSave\n*L\n134#1:149\n134#1:152\n139#1:150,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0002J\n\u0010\u0005\u001a\u00020\u0003*\u00020\u0002J\n\u0010\u0007\u001a\u00020\u0006*\u00020\u0002J,\u0010\u0010\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rJ\u001c\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00082\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nJ\"\u0010\u0014\u001a\u00020\u0003*\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000f\u001a\u00020\rH\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;",
        "",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "",
        "unloadPage",
        "saveAndUnloadPage",
        "",
        "savePage",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
        "providerHolder",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "changedShapeModels",
        "",
        "pageUniqueId",
        "infoRevisionId",
        "saveShapeToFile",
        "noteProviderHolder",
        "shapeModels",
        "deleteShapeFromDB",
        "a",
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
        "SMAP\nNotePageSave.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageSave.kt\ncom/onyx/android/sdk/note/common/document/page/NotePageSave\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,148:1\n215#2:149\n216#2:152\n1855#3,2:150\n*S KotlinDebug\n*F\n+ 1 NotePageSave.kt\ncom/onyx/android/sdk/note/common/document/page/NotePageSave\n*L\n134#1:149\n134#1:152\n139#1:150,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->saveShapeToFile(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final deleteShapeFromDB(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/util/List;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
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
            "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;)V"
        }
    .end annotation

    const-string p0, "noteProviderHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shapeModels"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/Collection;

    sget-object p0, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave$deleteShapeFromDB$modelGroup$1;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave$deleteShapeFromDB$modelGroup$1;

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave$deleteShapeFromDB$modelGroup$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave$deleteShapeFromDB$modelGroup$2;

    invoke-static {p2, p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMapList(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel$Companion;->newRevisionId()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setStatus(I)V

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setInfoRevisionId(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->updateShapeList(Ljava/util/List;)V

    sget-object v2, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->saveShapeToFile(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final saveAndUnloadPage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->savePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->unloadPage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    return-void
.end method

.method public final savePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z
    .locals 13
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel$Companion;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel$Companion;->newRevisionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel$Companion;->newRevisionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getNewAddedShapeMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v10, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;

    invoke-virtual {v10, v7}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->modelFromShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setInfoRevisionId(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getRevisionId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    move v9, v8

    :cond_1
    if-eqz v9, :cond_3

    sget-object v9, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v9, v7}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isReferenceShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v7}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/onyx/android/sdk/base/data/TouchPointList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    invoke-virtual {v10, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setRevisionId(Ljava/lang/String;)V

    new-instance v9, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    invoke-direct {v9}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;-><init>()V

    invoke-virtual {v10}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setShapeUniqueId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    move-result-object v9

    invoke-interface {v7}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v11

    invoke-interface {v7}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v12

    invoke-virtual {v12}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;->getMaxPressure()F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/onyx/android/sdk/base/data/TouchPointList;->toTinyPointList(F)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;->setTinyPointList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/data/point/ShapeRepo;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v9, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v9, v7}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->isSaved(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getRemoveResourceIdList()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v10}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getResourceId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v9, v7, v8}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setSaved(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const-class v10, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    if-lez v7, :cond_6

    sget-object v7, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new shape size:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v11, v12}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->saveShapeList(Ljava/util/List;)V

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    sget-object v7, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update shape size:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v11, v12}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v2}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->updateShapeList(Ljava/util/List;)V

    :cond_7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPointLoader()Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;

    move-result-object v7

    invoke-virtual {v7, v0, v5}, Lcom/onyx/android/sdk/replicator/note/data/point/PagePointLoader;->saveShapePointList(Ljava/util/List;Ljava/lang/String;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getRemovedShapeMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getRemoveTagIdList()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v7}, Lcom/onyx/android/sdk/note/common/shape/ShapeTag;->getTagIdList()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-static {v11, v12}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getRemoveResourceIdList()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v7}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getRevisionId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;

    invoke-virtual {v11, v7}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->modelFromShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setStatus(I)V

    invoke-virtual {v7, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setInfoRevisionId(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9

    sget-object v5, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remove shape size:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v10, v7, v9}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->updateShapeList(Ljava/util/List;)V

    :cond_9
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1, v3, v4}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getNewAddedShapeMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getRemovedShapeMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return v8
.end method

.method public final saveShapeToFile(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "providerHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "changedShapeModels"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pageUniqueId"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "infoRevisionId"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteResourceProvider()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument$Companion;->toShapeInfoList(Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-direct {p2}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setRevisionId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setSaveExportRecord(Z)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object p2

    sget-object p3, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->currentTimestamp()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setCreateAt(J)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getPbDocRecordProvider()Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setProvider(Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;)V

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->setData(Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->save()Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;

    return-void
.end method

.method public final unloadPage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getShapeList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getNewAddedShapeMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getRemovedShapeMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->setLoaded(Z)V

    return-void
.end method
