.class public final Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;->buildIndex(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;

.field public final synthetic f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$a;->f:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->getNoteSearchArgs()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$a;->e:Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;->getType()Lcom/onyx/android/sdk/data/common/data/TextContentType;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$a;->f:Ljava/util/Collection;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;->access$queryIndexPages(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;Lcom/onyx/android/sdk/data/common/data/TextContentType;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction$Companion$a;->a(Lcom/onyx/android/sdk/universal/editor/action/search/BuildTextIndexBaseAction;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
