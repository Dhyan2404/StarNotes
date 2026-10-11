.class public final Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->i()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;Z)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$a;->e:Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;

    iput-boolean p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$a;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
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

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getFirst(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$a;->e:Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->access$getTocEntry$p(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setPageId(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->edit_success:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$a;->e:Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/UpdateTocEntryEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$a;->e:Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->access$getTocEntry$p(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$a;->f:Z

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/UpdateTocEntryEvent;-><init>(Ljava/util/List;Z)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$a;->e:Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;->access$dismissSafe(Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/UpdateDocTocEntryTitleDialog$a;->a(Ljava/util/List;)V

    return-void
.end method
