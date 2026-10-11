.class public final Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->r(Ljava/util/List;Ljava/util/List;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$a;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$a;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$a;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;->access$getNoteSearchArgs$p(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildScribbleTextIndexAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$a;->g:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;->buildIndex(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
