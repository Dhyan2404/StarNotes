.class public final Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeDebugger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeDebugger.kt\ncom/onyx/android/sdk/note/common/utils/ShapeDebugger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n*L\n1#1,68:1\n1549#2:69\n1620#2,3:70\n1559#2:77\n1590#2,4:78\n1855#2,2:82\n50#3,2:73\n50#3,2:75\n*S KotlinDebug\n*F\n+ 1 ShapeDebugger.kt\ncom/onyx/android/sdk/note/common/utils/ShapeDebugger\n*L\n33#1:69\n33#1:70,3\n55#1:77\n55#1:78,4\n61#1:82,2\n53#1:73,2\n54#1:75,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006*\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u000c*\u0008\u0012\u0004\u0012\u00020\u00070\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger;",
        "",
        "()V",
        "debugFile",
        "",
        "readFromDebugFile",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "doc",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "saveToDebugFile",
        "",
        "sdk-note_overseasRelease"
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
        "SMAP\nShapeDebugger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeDebugger.kt\ncom/onyx/android/sdk/note/common/utils/ShapeDebugger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 JSONUtils.kt\ncom/onyx/android/sdk/data/utils/JSONUtils\n*L\n1#1,68:1\n1549#2:69\n1620#2,3:70\n1559#2:77\n1590#2,4:78\n1855#2,2:82\n50#3,2:73\n50#3,2:75\n*S KotlinDebug\n*F\n+ 1 ShapeDebugger.kt\ncom/onyx/android/sdk/note/common/utils/ShapeDebugger\n*L\n33#1:69\n33#1:70,3\n55#1:77\n55#1:78,4\n61#1:82,2\n53#1:73,2\n54#1:75,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final debugFile:Ljava/lang/String; = "sdcard/shapes.json"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final readFromDebugFile(Lcom/onyx/android/sdk/note/NoteBundle;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger;->readFromDebugFile(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final readFromDebugFile(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Ljava/util/List;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "doc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/onyx/android/sdk/base/extension/ContextKt;->isStorageManager()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/onyx/android/sdk/base/extension/ContextKt;->requestStorageManager()V

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    const-string v0, "sdcard/shapes.json"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    .line 6
    new-instance v1, Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger$readFromDebugFile$$inlined$parseList$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger$readFromDebugFile$$inlined$parseList$1;-><init>()V

    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 8
    :cond_1
    new-instance v2, Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger$readFromDebugFile$$inlined$parseList$2;

    invoke-direct {v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeDebugger$readFromDebugFile$$inlined$parseList$2;-><init>()V

    .line 9
    invoke-virtual {v0, p0, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 10
    :cond_2
    check-cast v1, Ljava/lang/Iterable;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_3

    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    .line 14
    sget-object v6, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->shapeFromModel(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    .line 15
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/fmm;

    .line 16
    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/fmm;->a()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->setPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    .line 17
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    .line 18
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    .line 19
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Matrix;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->invertMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->concatTransform(Landroid/graphics/RectF;[Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setOriginRect(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public final saveToDebugFile(Ljava/util/List;)V
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
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/base/extension/ContextKt;->isStorageManager()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/base/extension/ContextKt;->requestStorageManager()V

    return-void

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->modelFromShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->asPrettyJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->asPrettyJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "points"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    const-string v0, "sdcard/shapes.json"

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->saveContentToFile(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdcard/shapes_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->millisOfNow()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->saveContentToFile(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
