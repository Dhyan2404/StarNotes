.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapePBDocumentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapePBDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ4\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;",
        "",
        "()V",
        "saveToShapeFile",
        "",
        "noteProviderHolder",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
        "args",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
        "shapeModelList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "saveModel",
        "",
        "documentId",
        "",
        "pageUniqueId",
        "infoRevisionId",
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
        "SMAP\nShapePBDocumentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapePBDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,58:1\n1#2:59\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic saveToShapeFile$default(Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;->saveToShapeFile(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final saveToShapeFile(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;Ljava/util/List;Z)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;Z)V"
        }
    .end annotation

    const-string p0, "noteProviderHolder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shapeModelList"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 8
    :goto_1
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils$saveToShapeFile$infoRevisionId$2;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils$saveToShapeFile$infoRevisionId$2;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 9
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    .line 10
    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setInfoRevisionId(Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteResourceProvider()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument$Companion;->toShapeInfoList(Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;

    move-result-object v0

    .line 12
    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setSaveExportRecord(Z)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setRevisionId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object p0

    .line 14
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/ShapeDocumentUtils;->currentTimestamp()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setCreateAt(J)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    .line 15
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getPbDocRecordProvider()Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setProvider(Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;)V

    .line 16
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument;

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument;-><init>(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->setData(Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;->save()Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/BaseShapePBDocument;

    if-eqz p4, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteShapeProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;->saveShapeList(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public final saveToShapeFile(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "noteProviderHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageUniqueId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoRevisionId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeModelList"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setPageId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p4}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;->setRevisionId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;->saveToShapeFile$default(Lcom/onyx/android/sdk/replicator/note/proto/doc/ShapePBDocumentUtils;Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;Ljava/util/List;ZILjava/lang/Object;)V

    return-void
.end method
