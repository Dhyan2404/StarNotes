.class public final Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRDataUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRDataUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRDataUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1549#2:181\n1620#2,3:182\n766#2:187\n857#2,2:188\n1549#2:190\n1620#2,3:191\n1549#2:194\n1620#2,3:195\n1855#2,2:198\n1549#2:200\n1620#2,3:201\n1549#2:205\n1620#2,3:206\n1855#2,2:209\n37#3,2:185\n1#4:204\n*S KotlinDebug\n*F\n+ 1 HWRDataUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRDataUtils\n*L\n49#1:181\n49#1:182,3\n69#1:187\n69#1:188,2\n88#1:190\n88#1:191,3\n102#1:194\n102#1:195,3\n117#1:198,2\n132#1:200\n132#1:201,3\n150#1:205\n150#1:206,3\n175#1:209,2\n49#1:185,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008.\u0010/J\u0012\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\n\u0010\u0008\u001a\u00020\u0007*\u00020\u0002J\u0018\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\n\u0010\r\u001a\u00020\u000c*\u00020\u000cJ\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t*\u0008\u0012\u0004\u0012\u00020\u000c0\tJ\n\u0010\u000f\u001a\u00020\u000e*\u00020\u000cJ\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\t*\u0008\u0012\u0004\u0012\u00020\u000c0\tJ\n\u0010\u0011\u001a\u00020\u000c*\u00020\u000eJ\u001c\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00120\u0012*\u0008\u0012\u0004\u0012\u00020\u000c0\tJ\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t*\u0008\u0012\u0004\u0012\u00020\u000c0\tJ\n\u0010\u0015\u001a\u00020\u0005*\u00020\u0003J\u0010\u0010\u0017\u001a\u00020\u0016*\u0008\u0012\u0004\u0012\u00020\u000e0\tJ\n\u0010\u0018\u001a\u00020\u0005*\u00020\u0003J\u0018\u0010\u0018\u001a\u00020\u0005*\u0008\u0012\u0004\u0012\u00020\u000c0\t2\u0006\u0010\u0019\u001a\u00020\u0016J\u000e\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0016R\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010(\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u001f\u001a\u0004\u0008&\u0010!\"\u0004\u0008\'\u0010#R\u001a\u0010-\u001a\u00020\u00168\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;",
        "",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "input",
        "",
        "convert",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;",
        "candidateFromChar",
        "",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;",
        "charFromCandidate",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
        "copy",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "toTouchPoint",
        "toTouchPointList",
        "toPointerEvent",
        "",
        "group",
        "resample",
        "updateCanvasSize",
        "",
        "asDebugJson",
        "saveToDebugFile",
        "name",
        "file",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;",
        "readFromDebugFile",
        "",
        "a",
        "Z",
        "getSaveDebugPoints",
        "()Z",
        "setSaveDebugPoints",
        "(Z)V",
        "saveDebugPoints",
        "b",
        "getReadDebugPoints",
        "setReadDebugPoints",
        "readDebugPoints",
        "c",
        "Ljava/lang/String;",
        "getDebugFile",
        "()Ljava/lang/String;",
        "debugFile",
        "<init>",
        "()V",
        "sdk-hwr_release"
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
        "SMAP\nHWRDataUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRDataUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRDataUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1549#2:181\n1620#2,3:182\n766#2:187\n857#2,2:188\n1549#2:190\n1620#2,3:191\n1549#2:194\n1620#2,3:195\n1855#2,2:198\n1549#2:200\n1620#2,3:201\n1549#2:205\n1620#2,3:206\n1855#2,2:209\n37#3,2:185\n1#4:204\n*S KotlinDebug\n*F\n+ 1 HWRDataUtils.kt\ncom/onyx/android/sdk/hwr/utils/HWRDataUtils\n*L\n49#1:181\n49#1:182,3\n69#1:187\n69#1:188,2\n88#1:190\n88#1:191,3\n102#1:194\n102#1:195,3\n117#1:198,2\n132#1:200\n132#1:201,3\n150#1:205\n150#1:206,3\n175#1:209,2\n49#1:185,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Z

.field public static b:Z

.field public static final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    const-string v0, "sdcard/debug-temp/debug.json"

    sput-object v0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final asDebugJson(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->asPrettyJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final candidateFromChar(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getChars()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getCandidates()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate$Companion;->text(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object p0

    return-object p0
.end method

.method public final charFromCandidate(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Ljava/util/List;
    .locals 13
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "input"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getRegion()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getCandidates()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->Companion:Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getSourceStrokePointGroups()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;->merge(Ljava/util/Collection;)Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    add-int/lit8 v5, v4, 0x1

    int-to-float v6, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    int-to-float v7, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v8

    new-instance v8, Landroid/graphics/RectF;

    iget v9, p0, Landroid/graphics/RectF;->top:F

    iget v10, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v8, v6, v9, v7, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;

    invoke-direct {v6}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;-><init>()V

    const/4 v7, 0x2

    invoke-static {p1, v4, v3, v7, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->charAt$default(Ljava/lang/String;ICILjava/lang/Object;)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->setCandidates(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->copy()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->setSourcePointGroup(Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;->getSourcePointGroup()Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    move-result-object v4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v11}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v12

    invoke-virtual {v11}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v11

    invoke-virtual {v8, v12, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v9}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->setPoints(Ljava/util/List;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto/16 :goto_1

    :cond_4
    return-object v1
.end method

.method public final convert(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getCandidates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getChars()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getCandidates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->candidateFromChar(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;)Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getChars()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getCandidates()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;->getChars()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->charFromCandidate(Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method public final copy(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getEventType()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setEventType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setX(F)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setY(F)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getT()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setT(J)V

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getF()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setF(F)V

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getPointerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setPointerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerType;)V

    .line 8
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getPointerId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setPointerId(I)V

    return-object p0
.end method

.method public final copy(Ljava/util/List;)Ljava/util/List;
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
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    check-cast p1, Ljava/lang/Iterable;

    .line 10
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    .line 13
    sget-object v1, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->copy(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    move-result-object v0

    .line 14
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final getDebugFile()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getReadDebugPoints()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->b:Z

    return p0
.end method

.method public final getSaveDebugPoints()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->a:Z

    return p0
.end method

.method public final group(Ljava/util/List;)Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getEventType()Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->DOWN:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    if-ne v2, v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final readFromDebugFile(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;

    invoke-virtual {p1, p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent$HWRPointEventList;-><init>()V

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->MOVE:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setEventType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->DOWN:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setEventType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V

    :goto_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->UP:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setEventType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V

    :goto_2
    return-object p0
.end method

.method public final resample(Ljava/util/List;)Ljava/util/List;
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
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPointList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getResampleSpacing(Ljava/util/List;)F

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createPathFrom$default(Ljava/util/List;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->resample(Landroid/graphics/Path;Ljava/lang/Number;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v1, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toPointerEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->DOWN:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setEventType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->UP:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setEventType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V

    return-object p1
.end method

.method public final saveToDebugFile(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YMDHMS()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->saveToDebugFile(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public final saveToDebugFile(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->INSTANCE:Lcom/onyx/android/sdk/base/data/config/GlobalConfig;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->isStorageManagerEnable()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->hasStoragePermission(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdcard/debug-temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".json"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->ensureFileExists(Ljava/lang/String;)Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPointList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->asDebugJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {v0, p0, p2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->saveContentToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handwrite debug file saved : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final setReadDebugPoints(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->b:Z

    return-void
.end method

.method public final setSaveDebugPoints(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->a:Z

    return-void
.end method

.method public final toPointerEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setX(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setY(F)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setT(J)V

    sget-object p1, Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;->MOVE:Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->setEventType(Lcom/onyx/android/sdk/hwr/data/constant/HWRPointerEventType;)V

    return-object p0
.end method

.method public final toTouchPoint(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getT()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setTimestamp(J)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getF()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setPressure(F)V

    return-object p0
.end method

.method public final toTouchPointList(Ljava/util/List;)Ljava/util/List;
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
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    sget-object v1, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/hwr/utils/HWRDataUtils;->toTouchPoint(Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final updateCanvasSize(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getX()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_1

    :cond_1
    sub-float/2addr v1, v2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;->getY()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_3

    :cond_3
    sub-float/2addr v2, v0

    const/high16 p0, 0x3fc00000    # 1.5f

    mul-float/2addr v1, p0

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setViewWidth(F)V

    mul-float/2addr v2, p0

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setViewHeight(F)V

    return-void

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
