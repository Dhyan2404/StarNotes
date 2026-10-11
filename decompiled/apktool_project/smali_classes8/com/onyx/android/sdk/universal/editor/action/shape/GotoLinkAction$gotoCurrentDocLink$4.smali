.class final Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction$gotoCurrentDocLink$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;->p()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
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
.field final synthetic $docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction$gotoCurrentDocLink$4;->this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction$gotoCurrentDocLink$4;->$docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction$gotoCurrentDocLink$4;->this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction$gotoCurrentDocLink$4;->$docBean:Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/link/LinkDocBean;->getPageId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CheckNotePageExistAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/GotoLinkAction$gotoCurrentDocLink$4;->invoke(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
