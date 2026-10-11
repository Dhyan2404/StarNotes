.class public final Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRTextShapeCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRTextShapeCompat.kt\ncom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1855#2:118\n1856#2:120\n1#3:119\n*S KotlinDebug\n*F\n+ 1 HWRTextShapeCompat.kt\ncom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat\n*L\n47#1:118\n47#1:120\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u001b\u0010\u000f\u001a\u00020\u000b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR \u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00110\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        "shape",
        "",
        "updateHWRTextShapeChange",
        "c",
        "",
        "d",
        "b",
        "a",
        "",
        "Lkotlin/Lazy;",
        "getAppFontDirPath",
        "()Ljava/lang/String;",
        "appFontDirPath",
        "",
        "Lcom/onyx/android/sdk/base/data/Migration;",
        "Ljava/util/List;",
        "migrators",
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
        "SMAP\nHWRTextShapeCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRTextShapeCompat.kt\ncom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1855#2:118\n1856#2:120\n1#3:119\n*S KotlinDebug\n*F\n+ 1 HWRTextShapeCompat.kt\ncom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat\n*L\n47#1:118\n47#1:120\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/Migration<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat$appFontDirPath$2;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat$appFontDirPath$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->a:Lkotlin/Lazy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/onyx/android/sdk/base/data/Migration;

    new-instance v1, Lcom/sunia/HTREnginev2/gfh;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/gfh;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/sunia/HTREnginev2/hfh;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/hfh;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->getAppFontDirPath()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p0, v0, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/data/common/path/FontPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/FontPaths;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/common/path/FontPaths;->resolveLocalFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setFontFace(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->getPointsBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;->loadRenderPath()Lcom/onyx/android/sdk/base/data/FontPathRectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/FontPathRectList;->getUnionFontRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    sub-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z
    .locals 7

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getHWRTextShapeLayoutVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->d(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/Migration;

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getHWRTextShapeLayoutVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v1}, Lcom/onyx/android/sdk/base/data/Migration;->getVersion()I

    move-result v6

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    invoke-interface {v1, p1}, Lcom/onyx/android/sdk/base/data/Migration;->beforeMigration(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lcom/onyx/android/sdk/base/data/Migration;->migrate(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lcom/onyx/android/sdk/base/data/Migration;->afterMigration(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getHWRTextShapeLayoutVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result p0

    if-eq p0, v0, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method

.method public final d(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V
    .locals 1

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getHWRTextShapeLayoutVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->b(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;-><init>()V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setExtraBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeExtraBean;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setHWRTextShapeLayoutVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    :cond_1
    return-void
.end method

.method public final getAppFontDirPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final updateHWRTextShapeChange(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->c(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setRevisionId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShapeCompat;->a(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setInfoRevisionId(Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
