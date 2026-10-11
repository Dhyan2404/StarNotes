.class public final Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->t(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchTextBoxAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$searchPages$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,274:1\n1360#2:275\n1446#2,5:276\n1#3:281\n*S KotlinDebug\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$searchPages$1\n*L\n95#1:275\n95#1:276,5\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchTextBoxAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$searchPages$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,274:1\n1360#2:275\n1446#2,5:276\n1#3:281\n*S KotlinDebug\n*F\n+ 1 SearchTextBoxAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$searchPages$1\n*L\n95#1:275\n95#1:276,5\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$f;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$f;->f:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lkotlin/Pair;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$f;->e:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$f;->f:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->access$search(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;->access$toNoteSearchBeans(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$f;->e:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$f;->a(Ljava/util/List;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
