.class public final Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;->m(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
    value = "SMAP\nSearchReaderTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$4\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,161:1\n79#2,5:162\n113#2,6:167\n119#2:179\n76#3:173\n96#3,5:174\n*S KotlinDebug\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$4\n*L\n89#1:162,5\n89#1:167,6\n89#1:179\n91#1:173\n91#1:174,5\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchReaderTextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$4\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,161:1\n79#2,5:162\n113#2,6:167\n119#2:179\n76#3:173\n96#3,5:174\n*S KotlinDebug\n*F\n+ 1 SearchReaderTextAction.kt\ncom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$searchPages$4\n*L\n89#1:162,5\n89#1:167,6\n89#1:179\n91#1:173\n91#1:174,5\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$f;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;
    .locals 9
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
            "Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$f;->f:Ljava/util/List;

    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->readerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/reader/ReaderBundle;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;->access$searchReader(Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;Ljava/util/List;Lcom/onyx/android/sdk/reader/ReaderBundle;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {p1, v5, v4}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;->access$toNoteSearchBeans(Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    new-instance p1, Lkotlin/time/TimedValue;

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;

    invoke-virtual {p1}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/time/TimedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/time/TimedValue;->getDuration-UwyO8pc()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;-><init>(Ljava/util/List;Ljava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$f;->a(Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;

    move-result-object p0

    return-object p0
.end method
