.class public final Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction;
.super Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadColorSetAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadColorSetAction.kt\ncom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n766#2:32\n857#2,2:33\n766#2:35\n857#2,2:36\n1054#2:38\n*S KotlinDebug\n*F\n+ 1 LoadColorSetAction.kt\ncom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction\n*L\n19#1:32\n19#1:33,2\n20#1:35\n20#1:36,2\n21#1:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction;",
        "Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;",
        "provider",
        "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;",
        "l",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nLoadColorSetAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadColorSetAction.kt\ncom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n766#2:32\n857#2,2:33\n766#2:35\n857#2,2:36\n1054#2:38\n*S KotlinDebug\n*F\n+ 1 LoadColorSetAction.kt\ncom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction\n*L\n19#1:32\n19#1:33,2\n20#1:35\n20#1:36,2\n21#1:38\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;-><init>()V

    return-void
.end method

.method public static final synthetic access$loadColorSet(Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction;Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;)Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction;->l(Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;)Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/colorset/action/ColorSetBaseAction;->ensureColorProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction$a;-><init>(Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;)Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->Companion:Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider$Companion;->generateCommonColorSetArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/colorset/core/ColorSetProvider;->loadColorSetList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getPreset()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;->getPreset()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction$loadColorSet$$inlined$sortedByDescending$1;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/colorset/action/LoadColorSetAction$loadColorSet$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;-><init>()V

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/replicator/colorset/data/ColorPickerValues;->INSTANCE:Lcom/onyx/android/sdk/replicator/colorset/data/ColorPickerValues;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/colorset/data/ColorPickerValues;->getDEFAULT_COLOR_SETS()Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetList;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method
