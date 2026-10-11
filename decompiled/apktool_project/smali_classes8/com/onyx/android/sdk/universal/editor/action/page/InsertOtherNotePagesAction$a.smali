.class public final Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;->p()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;->access$getFromPageIndex$p(Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$Companion;->afterInserted(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a$a;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/InsertOtherNotePagesAction$a;->a(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
