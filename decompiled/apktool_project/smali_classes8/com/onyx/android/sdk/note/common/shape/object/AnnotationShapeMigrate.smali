.class public final Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnnotationShapeMigrate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnnotationShapeMigrate.kt\ncom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1855#2:66\n1856#2:68\n1#3:67\n*S KotlinDebug\n*F\n+ 1 AnnotationShapeMigrate.kt\ncom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate\n*L\n35#1:66\n35#1:68\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0006B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u0008\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;",
        "shape",
        "",
        "migrate",
        "a",
        "",
        "SHAPE_VERSION_LATEST",
        "I",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;",
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
        "SMAP\nAnnotationShapeMigrate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnnotationShapeMigrate.kt\ncom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1855#2:66\n1856#2:68\n1#3:67\n*S KotlinDebug\n*F\n+ 1 AnnotationShapeMigrate.kt\ncom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate\n*L\n35#1:66\n35#1:68\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SHAPE_VERSION_LATEST:I = 0x1

.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;

    new-instance v0, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;-><init>()V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)Z
    .locals 7

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getShapeVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    return v0

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getShapeVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;->getVersion()I

    move-result v6

    if-ne v5, v6, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;->beforeMigration(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;->c(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)V

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;->a(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getShapeVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;)I

    move-result p1

    if-eq p1, p0, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method public final migrate(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;->a(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/BaseShape;->setInfoRevisionId(Ljava/lang/String;)V

    :cond_0
    return p0
.end method
