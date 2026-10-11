.class public final Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;",
        "",
        "()V",
        "getItemBean",
        "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;",
        "set",
        "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;",
        "getNBIParameter",
        "Lcom/sunia/nbiv2/sdk/NBIParameter;",
        "param",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getItemBean(Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;)Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;
    .locals 17
    .param p1    # Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "set"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;->access$getParams$p(Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion$getItemBean$param$1;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet$Companion$getItemBean$param$1;-><init>(Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;)V

    new-instance v0, Lcom/sunia/HTREnginev2/l4n;

    invoke-direct {v0, v2}, Lcom/sunia/HTREnginev2/l4n;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "collect(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

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

    const/16 v15, 0x1fff

    const/16 v16, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v16}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    return-object v0
.end method

.method public final getNBIParameter(Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;)Lcom/sunia/nbiv2/sdk/NBIParameter;
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "param"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sunia/nbiv2/sdk/NBIParameter;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getContinuity$sdk_sunia_overseasRelease()I

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getCursive$sdk_sunia_overseasRelease()I

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getLightBrush$sdk_sunia_overseasRelease()I

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getWidth$sdk_sunia_overseasRelease()I

    move-result v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getFeiBai$sdk_sunia_overseasRelease()I

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getBrushTexture$sdk_sunia_overseasRelease()I

    move-result v6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getYiYang$sdk_sunia_overseasRelease()I

    move-result v7

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getSmooth$sdk_sunia_overseasRelease()I

    move-result v8

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaParam;->getAutoSmooth$sdk_sunia_overseasRelease()I

    move-result v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/sunia/nbiv2/sdk/NBIParameter;-><init>(IIIIIIIII)V

    return-object p0
.end method
