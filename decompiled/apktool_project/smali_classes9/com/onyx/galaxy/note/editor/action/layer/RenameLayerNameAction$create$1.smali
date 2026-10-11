.class final Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/ui/NameEditDialog;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Lcom/onyx/android/sdk/ui/NameEditDialog;",
        "editText",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $subject:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->this$0:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->$subject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/ui/NameEditDialog;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->invoke(Lcom/onyx/android/sdk/ui/NameEditDialog;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/ui/NameEditDialog;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/ui/NameEditDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/android/sdk/universal/R$string;->layer_name_empty_tips:I

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v1, p2, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->this$0:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;

    invoke-static {v0, p2}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->access$setNewName$p(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->this$0:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->access$getNewName$p(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->this$0:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->access$getLayerInfo$p(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;)Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/NameEditDialog;->dismiss()V

    .line 7
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->this$0:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->dispose()V

    return-void

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->this$0:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->access$getNewName$p(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->access$checkDuplicated(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 9
    sget-object v0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$a;->e:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$a;

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 10
    sget-object v0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$b;->e:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$b;

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 11
    new-instance v0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$c;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->this$0:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$c;-><init>(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 12
    new-instance v0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$d;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$d;-><init>(Lcom/onyx/android/sdk/ui/NameEditDialog;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$e;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->$subject:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->this$0:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;

    invoke-direct {p2, v0, p0}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$e;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
