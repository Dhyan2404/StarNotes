.class public final Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->x()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->Companion:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1$1;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;

    invoke-direct {v5, v0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1$1;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    new-instance v6, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1$2;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;

    invoke-direct {v6, p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1$2;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup;)V

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;->deletePages(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$deleteCurrentPage$1;->a(Ljava/util/List;)V

    return-void
.end method
