.class public final Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuNiaHWRUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaHWRUtils.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1855#2,2:192\n1549#2:194\n1620#2,3:195\n1855#2,2:198\n1855#2,2:200\n1855#2,2:202\n1855#2,2:204\n1549#2:206\n1620#2,3:207\n*S KotlinDebug\n*F\n+ 1 SuNiaHWRUtils.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils\n*L\n51#1:192,2\n58#1:194\n58#1:195,3\n80#1:198,2\n93#1:200,2\n134#1:202,2\n139#1:204,2\n171#1:206\n171#1:207,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\tJ\u000c\u0010\u000e\u001a\u00020\u000f*\u0004\u0018\u00010\u0010J8\u0010\u0011\u001a\u00020\u0012*\u0004\u0018\u00010\u00132\"\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00160\u0015j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0016`\u00172\u0006\u0010\u0018\u001a\u00020\u000bJ0\u0010\u0019\u001a\u00020\u001a*\u0004\u0018\u00010\u001b2\"\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00160\u0015j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0016`\u0017J\u0012\u0010\u001c\u001a\u00020\u001d*\u00020\u001e2\u0006\u0010\r\u001a\u00020\tJ\u0010\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001d0 *\u00020!J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001d0 *\u0008\u0012\u0004\u0012\u00020!0 J\u000c\u0010\"\u001a\u00020#*\u0004\u0018\u00010\u0013J\u0016\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0 *\u0008\u0012\u0004\u0012\u00020\u001d0 J\n\u0010&\u001a\u00020\'*\u00020\u001dJ\u0016\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\'0 *\u0008\u0012\u0004\u0012\u00020\u001d0 \u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;",
        "",
        "()V",
        "getConfigDataDir",
        "",
        "input",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "getConfigName",
        "toHWRPointerEventType",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;",
        "type",
        "",
        "toRecognizePointAction",
        "eventType",
        "toHWRBoundBox",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;",
        "Lcom/sunia/commonv2/bean/BoundingBox;",
        "toHWRChar",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;",
        "Lcom/sunia/commonv2/bean/PartieWords;",
        "strokePointsMap",
        "Ljava/util/HashMap;",
        "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;",
        "Lkotlin/collections/HashMap;",
        "fallbackStrokeColor",
        "toHWRConvertBean",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "Lcom/sunia/commonv2/bean/PartiBean;",
        "toHWRPointerEvent",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
        "Lcom/sunia/nbiv2/sdk/NBIAxisPoint;",
        "toHWRPointerEventList",
        "",
        "Lcom/sunia/nbiv2/sdk/NBIAxisPath;",
        "toHWRWord",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;",
        "toRecognizePaths",
        "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
        "toRecognizePoint",
        "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
        "toRecognizePoints",
        "sdk-sunia_overseasRelease"
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
        "SMAP\nSuNiaHWRUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaHWRUtils.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,191:1\n1855#2,2:192\n1549#2:194\n1620#2,3:195\n1855#2,2:198\n1855#2,2:200\n1855#2,2:202\n1855#2,2:204\n1549#2:206\n1620#2,3:207\n*S KotlinDebug\n*F\n+ 1 SuNiaHWRUtils.kt\ncom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils\n*L\n51#1:192,2\n58#1:194\n58#1:195,3\n80#1:198,2\n93#1:200,2\n134#1:202,2\n139#1:204,2\n171#1:206\n171#1:207,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfigDataDir(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/StorageLocation;->PRIVATE_FILE:Lcom/onyx/android/sdk/data/common/data/StorageLocation;

    sget-object v2, Lcom/onyx/android/sdk/data/common/data/DataScope;->APP:Lcom/onyx/android/sdk/data/common/data/DataScope;

    const-string v3, "hwr"

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getDirectory(Lcom/onyx/android/sdk/data/common/data/StorageLocation;Lcom/onyx/android/sdk/data/common/data/DataScope;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string p1, "resolve(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getConfigName(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".conf"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toHWRBoundBox(Lcom/sunia/commonv2/bean/BoundingBox;)Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;
    .locals 1
    .param p1    # Lcom/sunia/commonv2/bean/BoundingBox;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/BoundingBox;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->setX(F)V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/BoundingBox;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->setY(F)V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/BoundingBox;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->setWidth(F)V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/BoundingBox;->getHeight()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->setHeight(F)V

    return-object p0
.end method

.method public final toHWRChar(Lcom/sunia/commonv2/bean/PartieWords;Ljava/util/HashMap;I)Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;
    .locals 8
    .param p1    # Lcom/sunia/commonv2/bean/PartieWords;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/commonv2/bean/PartieWords;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;",
            ">;I)",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "strokePointsMap"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartieWords;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLabel(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->setLabel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartieWords;->getCandidates()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCandidates(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->setCandidates(Ljava/util/List;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartieWords;->getBounding_box()Lcom/sunia/commonv2/bean/BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toHWRBoundBox(Lcom/sunia/commonv2/bean/BoundingBox;)Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->setBoundBox(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartieWords;->getStrokeIds()Ljava/util/List;

    move-result-object p1

    const-string v1, "getStrokeIds(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p1, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    const/4 v2, 0x0

    sget-object p2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;->toRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->vertexPoints(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v6, 0x9

    const/4 v7, 0x0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;-><init>(Ljava/lang/String;Ljava/util/List;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->Companion:Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;->merge(Ljava/util/Collection;)Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->setSourcePointGroup(Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)V

    return-object p0
.end method

.method public final toHWRConvertBean(Lcom/sunia/commonv2/bean/PartiBean;Ljava/util/HashMap;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .locals 5
    .param p1    # Lcom/sunia/commonv2/bean/PartiBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/commonv2/bean/PartiBean;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;",
            ">;)",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "strokePointsMap"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartiBean;->getWords()Ljava/util/List;

    move-result-object v0

    const-string v1, "getWords(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/commonv2/bean/PartieWords;

    sget-object v2, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toHWRWord(Lcom/sunia/commonv2/bean/PartieWords;)Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->Companion:Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "<get-values>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;->getMostUsedStrokeColor(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartiBean;->getChars()Ljava/util/List;

    move-result-object v2

    const-string v3, "getChars(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/commonv2/bean/PartieWords;

    sget-object v4, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {v4, v3, p2, v1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toHWRChar(Lcom/sunia/commonv2/bean/PartieWords;Ljava/util/HashMap;I)Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartiBean;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getLabel(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setLabel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartiBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getType(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setType(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setWords(Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->setChars(Ljava/util/List;)V

    return-object p2
.end method

.method public final toHWRPointerEvent(Lcom/sunia/nbiv2/sdk/NBIAxisPoint;Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
    .locals 2
    .param p1    # Lcom/sunia/nbiv2/sdk/NBIAxisPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eventType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;-><init>()V

    iget v0, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setX(F)V

    iget v0, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setY(F)V

    iget-wide v0, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setT(J)V

    iget v0, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->p:F

    iput v0, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->p:F

    iget v0, p1, Lcom/sunia/nbiv2/sdk/NBIAxisPoint;->w:F

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setW(F)V

    iget-wide v0, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->id:J

    iput-wide v0, p1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->id:J

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setEventType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V

    return-object p0
.end method

.method public final toHWRPointerEventList(Lcom/sunia/nbiv2/sdk/NBIAxisPath;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/sunia/nbiv2/sdk/NBIAxisPath;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/nbiv2/sdk/NBIAxisPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->getNbiAxisPointList()Ljava/util/List;

    move-result-object p0

    const-string p1, "getNbiAxisPointList(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/sunia/nbiv2/sdk/NBIAxisPoint;

    .line 9
    sget-object v1, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->MOVE:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toHWRPointerEvent(Lcom/sunia/nbiv2/sdk/NBIAxisPoint;Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->DOWN:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setEventType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V

    .line 12
    :goto_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->UP:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setEventType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V

    :goto_2
    return-object p1
.end method

.method public final toHWRPointerEventList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/nbiv2/sdk/NBIAxisPath;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    check-cast p1, Ljava/lang/Iterable;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/nbiv2/sdk/NBIAxisPath;

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toHWRPointerEventList(Lcom/sunia/nbiv2/sdk/NBIAxisPath;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final toHWRPointerEventType(I)Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->MOVE:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->UP:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->MOVE:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->DOWN:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    :goto_0
    return-object p0
.end method

.method public final toHWRWord(Lcom/sunia/commonv2/bean/PartieWords;)Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;
    .locals 2
    .param p1    # Lcom/sunia/commonv2/bean/PartieWords;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartieWords;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLabel(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;->setLabel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartieWords;->getCandidates()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCandidates(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;->setCandidates(Ljava/util/List;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartieWords;->getBounding_box()Lcom/sunia/commonv2/bean/BoundingBox;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toHWRBoundBox(Lcom/sunia/commonv2/bean/BoundingBox;)Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;->setBoundBox(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V

    return-object p0
.end method

.method public final toRecognizePaths(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getEventType()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    :goto_1
    sget-object v2, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toRecognizePoint(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->addPoint(Lcom/sunia/HTREnginev2/sdk/RecognizePoint;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public final toRecognizePoint(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Lcom/sunia/HTREnginev2/sdk/RecognizePoint;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getF()F

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->p:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getT()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->t:J

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getPointerId()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->id:J

    sget-object v0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getEventType()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toRecognizePointAction(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)I

    move-result p1

    iput p1, p0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    return-object p0
.end method

.method public final toRecognizePointAction(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)I
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "eventType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toRecognizePoints(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    sget-object v1, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toRecognizePoint(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method
