.class public final Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMLShapePredictor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLShapePredictor.kt\ncom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n766#2:53\n857#2,2:54\n1855#2:56\n1549#2:57\n1620#2,3:58\n1549#2:61\n1620#2,3:62\n1856#2:65\n1549#2:66\n1620#2,3:67\n1855#2,2:70\n1549#2:72\n1620#2,3:73\n*S KotlinDebug\n*F\n+ 1 MLShapePredictor.kt\ncom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor\n*L\n15#1:53\n15#1:54,2\n31#1:56\n32#1:57\n32#1:58,3\n33#1:61\n33#1:62,3\n31#1:65\n37#1:66\n37#1:67,3\n44#1:70,2\n48#1:72\n48#1:73,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ(\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002J(\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002R\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;",
        "",
        "",
        "",
        "objectTypes",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
        "pointerEvents",
        "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;",
        "predict",
        "predictWithMatchTest",
        "Lcom/onyx/android/sdk/base/utils/ElementCounter;",
        "a",
        "Lcom/onyx/android/sdk/base/utils/ElementCounter;",
        "counter",
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
        "SMAP\nMLShapePredictor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MLShapePredictor.kt\ncom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n766#2:53\n857#2,2:54\n1855#2:56\n1549#2:57\n1620#2,3:58\n1549#2:61\n1620#2,3:62\n1856#2:65\n1549#2:66\n1620#2,3:67\n1855#2,2:70\n1549#2:72\n1620#2,3:73\n*S KotlinDebug\n*F\n+ 1 MLShapePredictor.kt\ncom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor\n*L\n15#1:53\n15#1:54,2\n31#1:56\n32#1:57\n32#1:58,3\n33#1:61\n33#1:62,3\n31#1:65\n37#1:66\n37#1:67,3\n44#1:70,2\n48#1:72\n48#1:73,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lcom/onyx/android/sdk/base/utils/ElementCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/utils/ElementCounter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;

    new-instance v0, Lcom/onyx/android/sdk/base/utils/ElementCounter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/ElementCounter;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;->a:Lcom/onyx/android/sdk/base/utils/ElementCounter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final predict(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "objectTypes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pointerEvents"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/base/utils/ElementCounter;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/utils/ElementCounter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/hwr/service/predictor/ShapeVerificationFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/predictor/ShapeVerificationFactory;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/service/predictor/ShapeVerificationFactory;->allVerifications()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;

    invoke-interface {v4}, Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;->similarObjectTypes()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->containAnyIgnoreCase(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4, p2}, Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;->input(Ljava/util/List;)Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;

    :try_start_0
    invoke-interface {v4}, Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;->verify()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v5

    :catchall_0
    if-eqz v6, :cond_2

    invoke-interface {v4}, Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;->shapeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;->output()Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;

    invoke-interface {v1}, Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;->similarObjectTypes()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v1}, Lcom/onyx/android/sdk/hwr/service/predictor/IShapeVerification;->shapeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/base/utils/ElementCounter;->put(Ljava/lang/Object;I)Ljava/lang/Integer;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ElementCounter;->toDescList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    return-object p1
.end method

.method public final predictWithMatchTest(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "objectTypes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pointerEvents"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;->a:Lcom/onyx/android/sdk/base/utils/ElementCounter;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/ElementCounter;->put(Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/hwr/service/predictor/MLShapePredictor;->a:Lcom/onyx/android/sdk/base/utils/ElementCounter;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ElementCounter;->printDescList()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HWRObjectType"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ElementCounter;->toDescList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;

    invoke-direct {v1, v0, p2}, Lcom/onyx/android/sdk/hwr/service/predictor/VerificationResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p1
.end method
