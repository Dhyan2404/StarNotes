.class public final Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$g;
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


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;)Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;->access$getResultList$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;->c()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;->access$getObserver$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;->b()Lkotlin/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$g;->a(Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;)Lcom/onyx/android/sdk/universal/editor/action/search/SearchReaderTextAction$SearchResult;

    move-result-object p0

    return-object p0
.end method
