.class public final Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFTSContentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSContentBuilder.kt\ncom/onyx/android/sdk/universal/util/FTSContentBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,228:1\n1855#2:229\n1855#2,2:230\n1856#2:232\n1855#2,2:233\n1549#2:235\n1620#2,3:236\n1549#2:239\n1620#2,2:240\n1549#2:242\n1620#2,3:243\n1622#2:246\n1855#2,2:247\n1002#2,2:249\n*S KotlinDebug\n*F\n+ 1 FTSContentBuilder.kt\ncom/onyx/android/sdk/universal/util/FTSContentBuilder\n*L\n62#1:229\n63#1:230,2\n62#1:232\n94#1:233,2\n113#1:235\n113#1:236,3\n147#1:239\n147#1:240,2\n148#1:242\n148#1:243,3\n147#1:246\n165#1:247,2\n185#1:249,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008.\u0010/J0\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0005J(\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0005J*\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u0006\u0010\u0004\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\u000e\u001a\u00020\rJ$\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\rJ\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00052\u0006\u0010\u0014\u001a\u00020\u0013J\u001c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00052\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0015J\"\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u0006\u0010\u0004\u001a\u00020\u00022\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0005J\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00052\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0005J4\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00052\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00052\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u00050\u001eJ \u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00050\u00052\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0005J\u0016\u0010\'\u001a\u00020&2\u0006\u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u0019R\u0014\u0010+\u001a\u00020(8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010-\u001a\u00020(8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008,\u0010*\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;",
        "",
        "",
        "engine",
        "pageId",
        "",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
        "hwrBlockOutputs",
        "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
        "extractFTSContent",
        "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
        "convertOutputToBlockBox",
        "blocks",
        "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
        "contentType",
        "convertBlockToFTSContent",
        "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;",
        "line",
        "convertLineToFTSContent",
        "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;",
        "run",
        "Landroid/graphics/RectF;",
        "extractCharRect",
        "text",
        "region",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        "textShapes",
        "shapes",
        "convertTextShapeToBlockBox",
        "groupShapes",
        "",
        "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "charPointMap",
        "convertGroupShapeToCharBox",
        "groupTextShape",
        "pre",
        "next",
        "",
        "atSameBlock",
        "",
        "a",
        "F",
        "maxDeltaDegree",
        "b",
        "horizontalSpacingFactor",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nFTSContentBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSContentBuilder.kt\ncom/onyx/android/sdk/universal/util/FTSContentBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,228:1\n1855#2:229\n1855#2,2:230\n1856#2:232\n1855#2,2:233\n1549#2:235\n1620#2,3:236\n1549#2:239\n1620#2,2:240\n1549#2:242\n1620#2,3:243\n1622#2:246\n1855#2,2:247\n1002#2,2:249\n*S KotlinDebug\n*F\n+ 1 FTSContentBuilder.kt\ncom/onyx/android/sdk/universal/util/FTSContentBuilder\n*L\n62#1:229\n63#1:230,2\n62#1:232\n94#1:233,2\n113#1:235\n113#1:236,3\n147#1:239\n147#1:240,2\n148#1:242\n148#1:243,3\n147#1:246\n165#1:247,2\n185#1:249,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:F = 15.0f

.field public static final b:F = 1.0f


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->INSTANCE:Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final atSameBlock(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pre"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "next"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result v0

    cmpg-float p0, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    return v1

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->roundByStep(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result v2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->roundByStep(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result p0

    cmpg-float p0, v2, p0

    if-nez p0, :cond_2

    move p0, v0

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    if-nez p0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_6

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result p1

    mul-float/2addr v3, p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextSize()F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getScaleY(Landroid/graphics/Matrix;)F

    move-result p2

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr v3, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr v3, p1

    iget p1, v2, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v3

    if-gez p0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0

    :cond_6
    :goto_3
    return v1
.end method

.method public final convertBlockToFTSContent(Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/TextContentType;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/data/common/data/TextContentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
            ">;",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pageId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "blocks"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "contentType"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;->getLines()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    sget-object v2, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->INSTANCE:Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;

    invoke-virtual {v2, p1, v1, p3}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->convertLineToFTSContent(Ljava/lang/String;Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;Lcom/onyx/android/sdk/data/common/data/TextContentType;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final convertGroupShapeToCharBox(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 20
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "groupShapes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "charPointMap"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v5

    sget-object v6, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->INSTANCE:Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;

    invoke-virtual {v6, v4, v5}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->extractCharRect(Ljava/lang/String;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v4, v8, v7, v9, v10}, Lcom/onyx/android/sdk/base/extension/StringKt;->charAt$default(Ljava/lang/String;ICILjava/lang/Object;)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    new-instance v15, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3c

    const/16 v19, 0x0

    move-object v10, v15

    move-object v12, v9

    move-object v7, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;-><init>(Ljava/lang/String;Landroid/graphics/RectF;Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;Landroid/graphics/Matrix;ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v10, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v10, v9}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->vertexPoints(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v1, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final convertLineToFTSContent(Ljava/lang/String;Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;Lcom/onyx/android/sdk/data/common/data/TextContentType;)Ljava/util/List;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/data/common/data/TextContentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;",
            "Lcom/onyx/android/sdk/data/common/data/TextContentType;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "line"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/graphics/RectF;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->setText(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->setRegion(Landroid/graphics/RectF;)V

    new-instance v4, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-direct {v4}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setType(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setContent(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->extractCharRect(Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setCharRectList(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getLineDegrees()F

    move-result p0

    cmpg-float p0, p0, v3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getLineDegrees()F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {p0, p1, p3, p2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->toMatrixValues(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setMatrixValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)V

    :cond_1
    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRuns()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;

    new-instance v5, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;

    invoke-direct {v5}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setType(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setContent(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setRect(Landroid/graphics/RectF;)V

    sget-object v6, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->INSTANCE:Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->extractCharRect(Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setCharRectList(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getLineDegrees()F

    move-result v4

    cmpg-float v4, v4, v3

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-nez v4, :cond_4

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getLineDegrees()F

    move-result v6

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {p2}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->toMatrixValues(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/MatrixValues;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;->setMatrixValues(Lcom/onyx/android/sdk/base/data/MatrixValues;)V

    :cond_4
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p0
.end method

.method public final convertOutputToBlockBox(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
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
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "engine"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "hwrBlockOutputs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->getResultConverterFactory()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;

    const/4 p1, 0x4

    invoke-interface {p0, p2, p1}, Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;->convert(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final convertTextShapeToBlockBox(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neohwr/layout/TextBlockBox;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->groupTextShape(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-static {v7}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v5, v5

    sget-object v6, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->INSTANCE:Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;

    invoke-virtual {v6, v4, v1}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->convertGroupShapeToCharBox(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    new-instance v14, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1f

    const/4 v13, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/graphics/RectF;Ljava/lang/String;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v14, v4}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->setChars(Ljava/util/List;)V

    new-instance v4, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xf

    const/16 v21, 0x0

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;-><init>(Ljava/util/List;FLandroid/graphics/RectF;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->setRuns(Ljava/util/List;)V

    sget-object v6, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/onyx/android/sdk/base/utils/MathUtils;->roundByStep(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/neohwr/layout/TextLineBox;->setLineDegrees(F)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->INSTANCE:Lcom/onyx/android/sdk/neohwr/layout/TextLayout;

    new-instance v3, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder$convertTextShapeToBlockBox$1;

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder$convertTextShapeToBlockBox$1;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Lcom/onyx/android/sdk/neohwr/layout/TextLayout;->groupBlockLines(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final extractCharRect(Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "run"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getChars()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getChars()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;

    .line 6
    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/layout/TextCharBox;->getRegion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/neohwr/layout/TextRunBox;->getRegion()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->extractCharRect(Ljava/lang/String;Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final extractCharRect(Ljava/lang/String;Landroid/graphics/RectF;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "region"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    int-to-float v1, v1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v1, v3

    iget v3, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    int-to-float v3, v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    .line 13
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p2, Landroid/graphics/RectF;->top:F

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v4, v1, v5, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final extractFTSContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWROutput;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hwrBlockOutputs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->convertOutputToBlockBox(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    sget-object p3, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HANDWRITING:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-virtual {p0, p2, p1, p3}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->convertBlockToFTSContent(Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/TextContentType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final extractFTSContent(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
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
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textShapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->convertTextShapeToBlockBox(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/data/common/data/TextContentType;->HWR_FONT_TEXT:Lcom/onyx/android/sdk/data/common/data/TextContentType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->convertBlockToFTSContent(Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/TextContentType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final groupTextShape(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder$groupTextShape$$inlined$sortBy$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder$groupTextShape$$inlined$sortBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeFirstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_4

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeFirstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    if-nez v4, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/onyx/android/sdk/universal/util/FTSContentBuilder;->atSameBlock(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object v3, v4

    goto :goto_0

    :cond_4
    return-object v0
.end method
