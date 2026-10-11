.class public final Lcom/onyx/android/sdk/note/common/shape/ShapeTests;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapeTests.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeTests.kt\ncom/onyx/android/sdk/note/common/shape/ShapeTests\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1864#2,3:118\n*S KotlinDebug\n*F\n+ 1 ShapeTests.kt\ncom/onyx/android/sdk/note/common/shape/ShapeTests\n*L\n34#1:118,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0007J\n\u0010\u0008\u001a\u00020\u0006*\u00020\u0007J\n\u0010\t\u001a\u00020\u0006*\u00020\u0007J\n\u0010\n\u001a\u00020\u0006*\u00020\u0007J\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0004J\n\u0010\r\u001a\u00020\u0006*\u00020\u0007J\n\u0010\u000e\u001a\u00020\u0006*\u00020\u0007J\n\u0010\u000f\u001a\u00020\u0006*\u00020\u0007J\u0012\u0010\u0010\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u0012\u0010\u0013\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u0012\u0010\u0014\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u0012\u0010\u0015\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u0012\u0010\u0016\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u0012\u0010\u0017\u001a\u00020\u0011*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/ShapeTests;",
        "",
        "()V",
        "SHAPE_TEST_POINT_COUNT",
        "",
        "addTestAttributes",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "addTestExtraAttributes",
        "addTestLink",
        "addTestPersistOptions",
        "addTestPoints",
        "pointCount",
        "addTestStyle",
        "addTestTag",
        "addTestTransform",
        "isAttributesEqual",
        "",
        "other",
        "isExtraAttributesEqual",
        "isPersistOptionsEqual",
        "isPointsEqual",
        "isStyleEqual",
        "isTransformEqual",
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
        "SMAP\nShapeTests.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeTests.kt\ncom/onyx/android/sdk/note/common/shape/ShapeTests\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1864#2,3:118\n*S KotlinDebug\n*F\n+ 1 ShapeTests.kt\ncom/onyx/android/sdk/note/common/shape/ShapeTests\n*L\n34#1:118,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTests;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHAPE_TEST_POINT_COUNT:I = 0x64


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTests;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTests;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTestAttributes(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 20
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setDocumentUniqueId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setShapeUniqueId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setSubPageUniqueId(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setLayerId(I)V

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/RandomUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/RandomUtils;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/utils/RandomUtils;->randomRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setBoundingRect(Landroid/graphics/RectF;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-object v2, v1

    sget-object v4, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v4}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v3

    invoke-virtual {v4}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v4

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

    const/16 v18, 0x7ffc

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v19}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;-><init>(FFLcom/onyx/android/sdk/replicator/note/data/shape/TiltConfig;Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;FFFFFFFFFZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setCreatedAt(Ljava/util/Date;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setUpdatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public final addTestExtraAttributes(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;->setTextContent(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeExtraAttributes;->setExtraBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V

    return-void
.end method

.method public final addTestLink(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeLink;->setLinkIdList(Ljava/util/List;)V

    return-void
.end method

.method public final addTestPersistOptions(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p0}, Lkotlin/random/Random$Default;->nextInt()I

    move-result p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->lock(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    return-void
.end method

.method public final addTestPoints(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/RandomUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/RandomUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/utils/RandomUtils;->randomPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->setPoints(Lcom/onyx/android/sdk/base/data/TouchPointList;)V

    return-void
.end method

.method public final addTestStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, -0x100

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    const p0, -0xffff01

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setFillColor(I)V

    sget-object p0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    return-void
.end method

.method public final addTestTag(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTag;->setTagIdList(Ljava/util/List;)V

    return-void
.end method

.method public final addTestTransform(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v1

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v1

    invoke-virtual {v0}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->setShapeMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final isAttributesEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "other"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getLayerId()I

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getCreatedAt()Ljava/util/Date;

    move-result-object p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getUpdatedAt()Ljava/util/Date;

    move-result-object p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getUpdatedAt()Ljava/util/Date;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isExtraAttributesEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "other"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeExtraAttributes;->getExtraBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeExtraAttributes;->getExtraBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isPersistOptionsEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "other"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result v2

    invoke-static {p2, p0, v0, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isLocked(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p1

    invoke-static {p2}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isLocked(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public final isPointsEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "other"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, p1, 0x1

    if-gez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->get(I)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    move p1, v2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final isStyleEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "other"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result v0

    if-ne p0, v0, :cond_1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result p1

    cmpg-float p0, p0, p1

    const/4 p1, 0x1

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public final isTransformEqual(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "other"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getFillColor()I

    move-result v0

    if-ne p0, v0, :cond_1

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result p0

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeWidth()F

    move-result p1

    cmpg-float p0, p0, p1

    const/4 p1, 0x1

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method
