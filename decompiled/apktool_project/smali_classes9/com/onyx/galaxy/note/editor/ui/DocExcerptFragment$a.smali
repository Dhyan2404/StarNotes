.class public final Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->G0(Ljava/util/List;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a;->e:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "excerpt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadQuoteNoteModeListAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a;->e:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadQuoteNoteModeListAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$a;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a;->e:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-direct {v2, v3, p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$a;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadQuoteNoteModeListAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$b;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a;->e:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$b;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a;->a(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
