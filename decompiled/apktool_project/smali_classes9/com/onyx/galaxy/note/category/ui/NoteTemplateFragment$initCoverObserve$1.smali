.class final Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->S1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;->invoke(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getCustomCoverAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;->notifySelectChange()V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getCoverCategoryAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;->notifySelectChange()V

    .line 4
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->ivTitleThumbCover:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    const-string v1, "ivTitleThumbCover"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;->updateViewSize(I)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;->loadCoverTemplateThumbnail(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$updateArgs(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    .line 8
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$updateApplyButton(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    .line 9
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getOrientation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$checkOrientationReloadData(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Ljava/lang/Integer;)V

    .line 10
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$updateCoverPosition(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    return-void
.end method
