.class public final Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeConvertUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeConvertUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeConvertUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,184:1\n1#2:185\n1549#3:186\n1620#3,3:187\n*S KotlinDebug\n*F\n+ 1 ShapeConvertUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeConvertUtils\n*L\n137#1:186\n137#1:187,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004J\u001c\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cJ\u0014\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cJ\u001c\u0010\u0014\u001a\u00020\u0013*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0002J\u0014\u0010\u0015\u001a\u00020\u0013*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000c\u0010\u0016\u001a\u00020\u0013*\u00020\u0002H\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;",
        "modelFromShape",
        "Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;",
        "providerHolder",
        "model",
        "shapeFromModel",
        "",
        "linkBeanJson",
        "",
        "audioPaths",
        "",
        "isAudioLinkShape",
        "shapeList",
        "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;",
        "toStashShapeInfoList",
        "",
        "b",
        "c",
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
        "SMAP\nShapeConvertUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeConvertUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeConvertUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,184:1\n1#2:185\n1549#3:186\n1620#3,3:187\n*S KotlinDebug\n*F\n+ 1 ShapeConvertUtils.kt\ncom/onyx/android/sdk/note/common/utils/ShapeConvertUtils\n*L\n137#1:186\n137#1:187,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result p0

    const/16 v0, 0x27

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/pen/TapeShape$Companion;->isAllTapeClose()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->STRIPES_FILL:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;->STROKE:Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setTapeStrokeStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/TapeStrokeStyle;)V

    :cond_1
    return-void
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V
    .locals 1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeType()I

    move-result p0

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getExcerptCollectionProvider()Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object p2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->loadExcerptCollectionListByQuoteId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setExcerptCollectionList(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;)V
    .locals 2

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result p0

    const/16 v0, 0x2d

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/object/TagShape;->Companion:Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/TagShape$Companion;->createTagBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->getTagList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    move-object p0, v0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;->getTagList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteTagProviderKt;->loadTagById(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {v1, p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    sget-object p2, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {p2, p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setTagBean(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTagBean;)V

    :cond_3
    return-void
.end method

.method public final isAudioLinkShape(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "linkBeanJson"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "audioPaths"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->isLinkAudioType()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeLinkBean;->getValue()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->isFileNameEqual(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public final modelFromShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;-><init>()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setDocumentUniqueId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setPageUniqueId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setBoundingRect(Landroid/graphics/RectF;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setColor(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setZorder(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setThickness(F)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setShapeType(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setGroupId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeExtraAttributes;->getExtraBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setExtraAttributes(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getShapeLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setShapeLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setText(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setRichText(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setFillColor(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getRevisionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setRevisionId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getInfoRevisionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setInfoRevisionId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTag;->getTagIdList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setTagIdList(Ljava/util/List;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeLink;->getLinkIdList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setLinkIdList(Ljava/util/List;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->toMatrixValues(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setMatrixValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getResource(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setResourceId(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setOptions(Lcom/onyx/android/sdk/base/utils/OptionsRepo;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDateTime(Ljava/util/Date;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getUpdatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDateTime(Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setStatus(I)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->getShapeSrcBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->setShapeConnectionBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeConnectionBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->setShapeReferenceBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeConnectionBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->getShapeSrcBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->setShapeSrcBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V

    :goto_2
    return-object p0
.end method

.method public final shapeFromModel(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 22
    .param p1    # Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "providerHolder"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "model"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setDocumentUniqueId(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setShapeUniqueId(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    :cond_0
    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setBoundingRect(Landroid/graphics/RectF;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getColor()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getZorder()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setLayerId(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getThickness()F

    move-result v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setType(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setGroupId(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getExtraAttributes()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeExtraAttributes;->setExtraBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeLineStyle()Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v4, v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setShapeLineStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-object v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7fff

    const/16 v21, 0x0

    invoke-direct/range {v4 .. v21}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;-><init>(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_2
    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getRichText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->setRichText(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getFillColor()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setFillColor(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getRevisionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setRevisionId(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getInfoRevisionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setInfoRevisionId(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getTagIdList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTag;->setTagIdList(Ljava/util/List;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getLinkIdList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeLink;->setLinkIdList(Ljava/util/List;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getMatrixValues()Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixByValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->setShapeMatrix(Landroid/graphics/Matrix;)V

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    sget-object v5, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/ResourceModels;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getNoteResourceProvider()Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getResourceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;->loadResourceModel(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->toShapeResource(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setResource(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)V

    new-instance v5, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getCreatedAt()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v2, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setCreatedAt(Ljava/util/Date;)V

    new-instance v5, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v2, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setUpdatedAt(Ljava/util/Date;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getStatus()I

    move-result v5

    invoke-interface {v2, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setStatus(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    invoke-direct {v5}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;-><init>()V

    :cond_5
    invoke-interface {v2, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->setPersistOptions(Lcom/onyx/android/sdk/base/utils/OptionsRepo;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeConnectionBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->getShapeSrcBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;

    move-result-object v5

    goto :goto_2

    :cond_6
    move-object v5, v4

    :goto_2
    invoke-interface {v2, v5}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->setShapeSrcBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V

    invoke-virtual/range {p2 .. p2}, Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;->getShapeConnectionBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeConnectionBean;->getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;

    move-result-object v4

    :cond_7
    invoke-interface {v2, v4}, Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;->setShapeReferenceBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V

    sget-object v4, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;

    invoke-virtual {v4, v2, v0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->b(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;)V

    invoke-virtual {v4, v2, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->c(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;)V

    invoke-virtual {v4, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->a(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v2, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setSaved(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    return-object v2
.end method

.method public final toStashShapeInfoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;
    .locals 6
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
            ">;)",
            "Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "build(...)"

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeTime()V

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument$Companion;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/common/utils/ShapeConvertUtils;->modelFromShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;

    move-result-object v4

    sget-object v5, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v5, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getResource(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NoteShapePBDocument$Companion;->buildShapeInfoProto(Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/base/data/TouchPointList;->Companion:Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList$Companion;->pointsToByteArray(Lcom/onyx/android/sdk/base/data/TouchPointList;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;->setPointList(Lcom/google/protobuf/ByteString;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProto;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;->newBuilder()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList$Builder;->addAllProto(Ljava/lang/Iterable;)Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList$Builder;->build()Lcom/onyx/android/sdk/replicator/note/proto/NoteShapeDocProto$ShapeInfoProtoList;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
