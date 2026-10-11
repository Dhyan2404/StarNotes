.class public final Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShapePersistOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapePersistOptions.kt\ncom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt\n+ 2 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo\n*L\n1#1,171:1\n78#1,2:172\n82#1,7:175\n78#1,2:183\n82#1,7:186\n78#1,2:193\n82#1,7:196\n19#2:174\n19#2:182\n19#2:185\n19#2:195\n*S KotlinDebug\n*F\n+ 1 ShapePersistOptions.kt\ncom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt\n*L\n65#1:172,2\n65#1:175,7\n108#1:183,2\n108#1:186,7\n135#1:193,2\n135#1:196,7\n65#1:174\n79#1:182\n108#1:185\n135#1:195\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\"\u001a\u0014\u0010\u0003\u001a\u00020\u0001*\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u001a\u0010\u0008\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0005\u001a\n\u0010\n\u001a\u00020\t*\u00020\u0000\u001a\u0014\u0010\u000b\u001a\u00020\t*\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u000c\u001a\u00020\u0001*\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\r\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0001\u001a\n\u0010\u000f\u001a\u00020\u000e*\u00020\u0000\u001a\u0012\u0010\u0011\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000e\u001a+\u0010\u0016\u001a\u00020\u0007\"\u0008\u0008\u0000\u0010\u0013*\u00020\u0012*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a8\u0010\u001a\u001a\u0004\u0018\u00018\u0000\"\n\u0008\u0000\u0010\u0013\u0018\u0001*\u00020\u0012*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00052\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018H\u0086\u0008\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u001a\n\u0010\u001c\u001a\u00020\t*\u00020\u0000\u001a\u0012\u0010\u001d\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u001d\u001a\u00020\t\u001a\n\u0010\u001e\u001a\u00020\t*\u00020\u0000\u001a\u0012\u0010 \u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u001f\u001a\u00020\t\u001a\u000c\u0010\"\u001a\u0004\u0018\u00010!*\u00020\u0000\u001a\u0012\u0010$\u001a\u00020\u0007*\u00020\u00002\u0006\u0010#\u001a\u00020!\u001a\n\u0010%\u001a\u00020\t*\u00020\u0000\u001a\u0012\u0010\'\u001a\u00020\u0007*\u00020\u00002\u0006\u0010&\u001a\u00020\t\u001a\u0014\u0010(\u001a\u00020\t*\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\t\u001a\u0012\u0010*\u001a\u00020\u0007*\u00020\u00002\u0006\u0010)\u001a\u00020\t\u001a\u000c\u0010,\u001a\u0004\u0018\u00010+*\u00020\u0000\u001a\u0012\u0010-\u001a\u00020\u0007*\u00020\u00002\u0006\u0010#\u001a\u00020+\u001a\n\u0010.\u001a\u00020\u0005*\u00020\u0000\u001a\n\u0010/\u001a\u00020\t*\u00020\u0000\u001a\n\u00101\u001a\u000200*\u00020\u0000\u001a\n\u00102\u001a\u00020\u0001*\u00020\u0000\u001a\u0012\u00104\u001a\u00020\u0007*\u00020\u00002\u0006\u00103\u001a\u00020\u0001\u001a\n\u00105\u001a\u00020\u0001*\u00020\u0000\u001a\u0012\u00106\u001a\u00020\u0007*\u00020\u00002\u0006\u00103\u001a\u00020\u0001\"\u0014\u00109\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u00087\u00108\"\u0014\u0010;\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008:\u00108\"\u0014\u0010=\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008<\u00108\"\u0014\u0010?\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008>\u00108\"\u0014\u0010A\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008@\u00108\"\u0014\u0010C\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008B\u00108\"\u0014\u0010E\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008D\u00108\"\u0014\u0010G\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008F\u00108\"\u0014\u0010I\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008H\u00108\"\u0014\u0010K\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008J\u00108\"\u0014\u0010M\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008L\u00108\"\u0014\u0010O\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008N\u00108\"\u0014\u0010Q\u001a\u00020\u00058\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008P\u00108\u00a8\u0006R"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "",
        "defaultValue",
        "getTapeSubShapeType",
        "subShapeType",
        "",
        "fillShapeStyle",
        "",
        "setTapeSubShapeType",
        "",
        "isInvalidSubShapeType",
        "isLineSubShapeType",
        "getSubShapeType",
        "setSubShapeType",
        "Landroid/graphics/RectF;",
        "getQuoteIndicatorAnchorRect",
        "rectF",
        "setQuoteIndicatorAnchorRect",
        "",
        "T",
        "key",
        "value",
        "putPersistObject",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Ljava/lang/Object;)V",
        "Ljava/lang/Class;",
        "cls",
        "getPersistObject",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;",
        "isLocked",
        "lock",
        "isRoundCorner",
        "round",
        "setRoundCorner",
        "Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;",
        "getAnnotationInfoBean",
        "info",
        "setAnnotationInfoBean",
        "isBottom",
        "bottom",
        "setBottom",
        "isUnderContent",
        "under",
        "setUnderContent",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "getExcerptInfoBean",
        "setExcerptInfoBean",
        "getTapeShapeFillStyle",
        "isInvalidExcerptShape",
        "Lcom/onyx/android/sdk/base/utils/OptionsRepo;",
        "clonePersistOptions",
        "getHWRTextShapeLayoutVersion",
        "version",
        "setHWRTextShapeLayoutVersion",
        "getShapeVersion",
        "setShapeVersion",
        "a",
        "Ljava/lang/String;",
        "KEY_OLD_SUB_SHAPE_TYPE",
        "b",
        "KEY_SUB_SHAPE_TYPE",
        "c",
        "KEY_QUOTE_INDICATOR_ANCHOR_RECT",
        "d",
        "KEY_LOCKED",
        "e",
        "KEY_ROUND_CORNER",
        "f",
        "KEY_ANNOTATION_INFO",
        "g",
        "KEY_BOTTOM",
        "h",
        "KEY_UNDER_CONTENT",
        "i",
        "KEY_EXCERPT_INFO",
        "j",
        "KEY_TAPE_FILL_STYLE",
        "k",
        "KEY_PORTERDUFF_MODE",
        "l",
        "KEY_HWR_TEXT_SHAPE_LAYOUT_VERSION",
        "m",
        "KEY_SHAPE_VERSION",
        "sdk-note_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShapePersistOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapePersistOptions.kt\ncom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt\n+ 2 OptionsRepo.kt\ncom/onyx/android/sdk/base/utils/OptionsRepo\n*L\n1#1,171:1\n78#1,2:172\n82#1,7:175\n78#1,2:183\n82#1,7:186\n78#1,2:193\n82#1,7:196\n19#2:174\n19#2:182\n19#2:185\n19#2:195\n*S KotlinDebug\n*F\n+ 1 ShapePersistOptions.kt\ncom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt\n*L\n65#1:172,2\n65#1:175,7\n108#1:183,2\n108#1:186,7\n135#1:193,2\n135#1:196,7\n65#1:174\n79#1:182\n108#1:185\n135#1:195\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "KEY_SUB_SHAPE_TYPE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String; = "KEY_NEW_SUB_SHAPE_TYPE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "KEY_QUOTE_INDICATOR_ANCHOR_RECT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "KEY_LOCKED"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/lang/String; = "KEY_ROUND_CORNER"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Ljava/lang/String; = "KEY_ANNOTATION_INFO"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Ljava/lang/String; = "KEY_BOTTOM"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/lang/String; = "KEY_UNDER_CONTENT"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Ljava/lang/String; = "KEY_EXCERPT_INFO"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Ljava/lang/String; = "KEY_TAPE_FILL_STYLE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Ljava/lang/String; = "KEY_PORTERDUFF_MODE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Ljava/lang/String; = "KEY_HWR_TEXT_SHAPE_LAYOUT_VERSION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/lang/String; = "KEY_SHAPE_VERSION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final clonePersistOptions(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/base/utils/OptionsRepo;
    .locals 3
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->Companion:Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;->cloneOptionsRepo$default(Lcom/onyx/android/sdk/base/utils/OptionsRepo$Companion;Lcom/onyx/android/sdk/base/utils/OptionsRepo;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    return-object p0
.end method

.method public static final getAnnotationInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;
    .locals 5
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    const-string v1, "KEY_ANNOTATION_INFO"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    goto :goto_2

    :cond_1
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v4, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    invoke-virtual {v3, v0, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    :goto_2
    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    return-object v2
.end method

.method public static final getExcerptInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
    .locals 9
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getUpdatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v4

    const-string v5, "KEY_EXCERPT_INFO"

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    if-nez v5, :cond_1

    move-object v4, v6

    :cond_1
    check-cast v4, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_4

    :goto_2
    move-object v4, v6

    goto :goto_3

    :cond_4
    sget-object v7, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v8, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {v7, v4, v8}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    check-cast v4, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    if-eqz v4, :cond_6

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setUniqueId(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setPageUniqueId(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setCreatedAt(J)V

    invoke-virtual {v4, v2, v3}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->setUpdatedAt(J)V

    move-object v6, v4

    :cond_6
    return-object v6
.end method

.method public static final getHWRTextShapeLayoutVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;)I
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_HWR_TEXT_SHAPE_LAYOUT_VERSION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final synthetic getPersistObject(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    const-string p2, "T?"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return-object v2

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1, v0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v2

    :cond_3
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static final getQuoteIndicatorAnchorRect(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/RectF;
    .locals 5
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    const-string v1, "KEY_QUOTE_INDICATOR_ANCHOR_RECT"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getRepo()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/RectF;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    check-cast v2, Landroid/graphics/RectF;

    goto :goto_2

    :cond_1
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v4, Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    :goto_2
    check-cast v2, Landroid/graphics/RectF;

    if-nez v2, :cond_5

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    :cond_5
    return-object v2
.end method

.method public static final getShapeVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;)I
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_SHAPE_VERSION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)I
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_NEW_SUB_SHAPE_TYPE"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic getSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x7

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)I

    move-result p0

    return p0
.end method

.method public static final getTapeShapeFillStyle(Lcom/onyx/android/sdk/note/common/shape/Shape;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_TAPE_FILL_STYLE"

    invoke-interface {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static final getTapeSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)I
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    const-string v1, "KEY_SUB_SHAPE_TYPE"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)I

    move-result p0

    return p0
.end method

.method public static synthetic getTapeSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x7

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getTapeSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)I

    move-result p0

    return p0
.end method

.method public static final isBottom(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_BOTTOM"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isInvalidExcerptShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_EXCERPT_INFO"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->contains(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final isInvalidSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isLineSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)I

    move-result p0

    const/4 p1, 0x7

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic isLineSubShapeType$default(Lcom/onyx/android/sdk/note/common/shape/Shape;IILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x7

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isLineSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)Z

    move-result p0

    return p0
.end method

.method public static final isLocked(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_LOCKED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isRoundCorner(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_ROUND_CORNER"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)Z
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_UNDER_CONTENT"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic isUnderContent$default(Lcom/onyx/android/sdk/note/common/shape/Shape;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->isUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)Z

    move-result p0

    return p0
.end method

.method public static final lock(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_LOCKED"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final putPersistObject(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRuntimeOptions;->getRuntimeOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    return-void
.end method

.method public static final setAnnotationInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_ANNOTATION_INFO"

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->putPersistObject(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setBottom(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_BOTTOM"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setExcerptInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_EXCERPT_INFO"

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->putPersistObject(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setHWRTextShapeLayoutVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_HWR_TEXT_SHAPE_LAYOUT_VERSION"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->putInt(Ljava/lang/String;I)Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    return-void
.end method

.method public static final setQuoteIndicatorAnchorRect(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KEY_QUOTE_INDICATOR_ANCHOR_RECT"

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->putPersistObject(Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static final setRoundCorner(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_ROUND_CORNER"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setShapeVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_SHAPE_VERSION"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->putInt(Ljava/lang/String;I)Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    return-void
.end method

.method public static final setSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_NEW_SUB_SHAPE_TYPE"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->putInt(Ljava/lang/String;I)Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    return-void
.end method

.method public static final setTapeSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;ILjava/lang/String;)V
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fillShapeStyle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    const-string v1, "KEY_SUB_SHAPE_TYPE"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->remove(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object v0

    const-string v1, "KEY_TAPE_FILL_STYLE"

    invoke-virtual {v0, v1, p2}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setSubShapeType(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    return-void
.end method

.method public static final setUnderContent(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;->getPersistOptions()Lcom/onyx/android/sdk/base/utils/OptionsRepo;

    move-result-object p0

    const-string v0, "KEY_UNDER_CONTENT"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/OptionsRepo;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
