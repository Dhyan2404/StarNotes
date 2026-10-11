.class public final Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSourcePointGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourcePointGroup.kt\ncom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1360#2:47\n1446#2,5:48\n1549#2:53\n1620#2,3:54\n1549#2:57\n1620#2,3:58\n*S KotlinDebug\n*F\n+ 1 SourcePointGroup.kt\ncom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion\n*L\n27#1:47\n27#1:48,5\n39#1:53\n39#1:54,3\n43#1:57\n43#1:58,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0007\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0010\u0010\u0008\u001a\u00020\u0006*\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;",
        "",
        "()V",
        "getMostUsedFillColor",
        "",
        "",
        "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;",
        "getMostUsedStrokeColor",
        "merge",
        "sdk-neohwr_release"
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
        "SMAP\nSourcePointGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourcePointGroup.kt\ncom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n1360#2:47\n1446#2,5:48\n1549#2:53\n1620#2,3:54\n1549#2:57\n1620#2,3:58\n*S KotlinDebug\n*F\n+ 1 SourcePointGroup.kt\ncom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion\n*L\n27#1:47\n27#1:48,5\n39#1:53\n39#1:54,3\n43#1:57\n43#1:58,3\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMostUsedFillColor(Ljava/util/Collection;)I
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;",
            ">;)I"
        }
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

    check-cast v0, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getFillColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getMostUsedItem(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final getMostUsedStrokeColor(Ljava/util/Collection;)I
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;",
            ">;)I"
        }
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

    check-cast v0, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getStrokeColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getMostUsedItem(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    const/high16 p0, -0x1000000

    :goto_1
    return p0
.end method

.method public final merge(Ljava/util/Collection;)Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;
    .locals 8
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;",
            ">;)",
            "Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;->getPoints()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;->getMostUsedStrokeColor(Ljava/util/Collection;)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup$Companion;->getMostUsedFillColor(Ljava/util/Collection;)I

    move-result v5

    new-instance p0, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/neohwr/layout/SourcePointGroup;-><init>(Ljava/lang/String;Ljava/util/List;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
