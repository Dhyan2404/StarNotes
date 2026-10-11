.class public final Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a;->a(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)Lio/reactivex/rxjava3/core/ObservableSource;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadQuoteNoteModeListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadQuoteNoteModeListAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$a;->e:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$a;->f:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$a;->g:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadQuoteNoteModeListAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$a;->e:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$a;->f:Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$a;->g:Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadQuoteNoteModeListAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LoadQuoteNoteModeListAction;->getExcerptCollectionList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->setExcerptCollection(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$a$a;->a(Ljava/util/List;)V

    return-void
.end method
