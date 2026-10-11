.class public final Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->d0(Ljava/util/List;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$k;->e:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$k;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/page/RestoreRemovedPagesAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$k;->e:Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$k;->f:Ljava/util/List;

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/page/RestoreRemovedPagesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PageRecycleBinPopup$k;->a(Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
