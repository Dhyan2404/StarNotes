.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;->l()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->getNoteSearchArgs()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->getSearchContext()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;->getPageIdsForSearchScribble()Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->getIndexedPageIds()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
