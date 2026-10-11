.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotePagePBShapeChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePagePBShapeChecker.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,162:1\n1194#2,2:163\n1222#2,4:165\n1603#2,9:169\n1855#2:178\n1856#2:180\n1612#2:181\n1855#2,2:182\n2634#2:191\n2624#2,3:193\n2634#2:196\n1549#2:198\n1620#2,3:199\n1194#2,2:202\n1222#2,4:204\n1#3:179\n1#3:192\n1#3:197\n494#4,7:184\n*S KotlinDebug\n*F\n+ 1 NotePagePBShapeChecker.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker\n*L\n49#1:163,2\n49#1:165,4\n51#1:169,9\n51#1:178\n51#1:180\n51#1:181\n58#1:182,2\n86#1:191\n94#1:193,3\n120#1:196\n146#1:198\n146#1:199,3\n154#1:202,2\n154#1:204,4\n51#1:179\n86#1:192\n120#1:197\n77#1:184,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0018\u001a\u00020\u0016\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u0012\u0006\u0010\u001d\u001a\u00020\u000b\u0012\u0006\u0010\u001f\u001a\u00020\u000b\u00a2\u0006\u0004\u0008(\u0010)J\u0014\u0010\u0005\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J*\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0002J$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00082\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00030\u0011H\u0002J\u0016\u0010\u0015\u001a\u00020\u00132\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007H\u0002R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\u001c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R0\u0010\'\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00030#j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0003`$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "list",
        "setShapeModelList",
        "check",
        "",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
        "argsList",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;",
        "recordModelMap",
        "",
        "a",
        "args",
        "",
        "shapeModelMap",
        "",
        "b",
        "c",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;",
        "shapeProvider",
        "Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;",
        "Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;",
        "pbDocRecordProvider",
        "Ljava/lang/String;",
        "documentId",
        "d",
        "pageId",
        "e",
        "Ljava/util/Collection;",
        "shapeModelList",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "f",
        "Ljava/util/HashMap;",
        "removeShapeMap",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;Ljava/lang/String;Ljava/lang/String;)V",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nNotePagePBShapeChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePagePBShapeChecker.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,162:1\n1194#2,2:163\n1222#2,4:165\n1603#2,9:169\n1855#2:178\n1856#2:180\n1612#2:181\n1855#2,2:182\n2634#2:191\n2624#2,3:193\n2634#2:196\n1549#2:198\n1620#2,3:199\n1194#2,2:202\n1222#2,4:204\n1#3:179\n1#3:192\n1#3:197\n494#4,7:184\n*S KotlinDebug\n*F\n+ 1 NotePagePBShapeChecker.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker\n*L\n49#1:163,2\n49#1:165,4\n51#1:169,9\n51#1:178\n51#1:180\n51#1:181\n58#1:182,2\n86#1:191\n94#1:193,3\n120#1:196\n146#1:198\n146#1:199,3\n154#1:202,2\n154#1:204,4\n51#1:179\n86#1:192\n120#1:197\n77#1:184,7\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;
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

    const-string v0, "shapeProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pbDocRecordProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->a:Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->b:Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;

    iput-object p3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string p2, "emptyList(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->e:Ljava/util/Collection;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;",
            ">;)Z"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->isSynced()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->e:Ljava/util/Collection;

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p1, p2

    :goto_2
    if-eqz p1, :cond_5

    :cond_4
    :goto_3
    move v1, p2

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->e:Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_6

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getInfoRevisionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_8
    :goto_4
    return v1
.end method

.method public final b(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument$Companion;

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument;

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setRevisionId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getCreateAt()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setCreateAt(J)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->load()Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument$Companion;->fromShapeInfoProtoList$default(Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument$Companion;Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->c(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const-class v4, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    :cond_0
    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is newer on database"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setPageUniqueId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setDocumentUniqueId(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setPointSaveType(I)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setCoordType(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "documentId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pageId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  revisionId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " update shape count: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v4, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->a:Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->saveShapeList(Ljava/util/List;)V

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->getCOMMON_BATCH_DATA_COUNT()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/replicator/note/db/ShapeQueryArgsExtKt;->inRemovedShapeIdListQuery(Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->a:Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->loadShapeList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/constant/NoteConstant;->getCOMMON_BATCH_DATA_COUNT()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final check()Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->docPageShapeArgsList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->e:Ljava/util/Collection;

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->e:Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->b:Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;

    iget-object v7, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->c:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;->loadRecordModelMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->a(Ljava/util/List;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v6, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v7, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is need reload shape"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8, v9}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->isSynced()Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v3

    goto :goto_5

    :cond_8
    move v8, v2

    :goto_5
    if-nez v0, :cond_9

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v7, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->b(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;Ljava/util/Map;)V

    if-nez v8, :cond_7

    new-instance v8, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;

    invoke-direct {v8}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;-><init>()V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/lang3/StringUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "trimToEmpty(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setStatus(I)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getCreateAt()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setTimeStamp(J)V

    iget-object v7, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->c:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setDocumentId(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->d:Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setPageId(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->b:Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;

    invoke-virtual {p0, v6}, Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;->saveRecordList(Ljava/util/List;)V

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final setShapeModelList(Ljava/util/Collection;)Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;->e:Ljava/util/Collection;

    return-object p0
.end method
