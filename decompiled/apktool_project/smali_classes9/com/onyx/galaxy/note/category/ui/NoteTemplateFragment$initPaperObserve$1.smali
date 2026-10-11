.class final Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "kotlin.jvm.PlatformType",
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;->invoke$lambda$0(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 1

    const-string v0, "$ivTitleThumbPaper"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;->loadPaperTemplateThumbnail(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    invoke-static {p2, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$updateGeoLayout(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    invoke-static {p2}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$updateArgs(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {p2}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$updateApplyButton(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;->invoke(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getCustomPaperAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;->notifySelectChange()V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getPaperCategoryAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;->notifySelectChange()V

    .line 4
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->ivTitleThumbPaper:Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;

    const-string v1, "ivTitleThumbPaper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;->updateViewSize(I)V

    .line 6
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/t;

    invoke-direct {v2, v0, p1, v1}, Lcom/onyx/galaxy/note/category/ui/t;-><init>(Lcom/onyx/galaxy/note/editor/view/custom/TemplateThumbnailView;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$updatePaperPosition(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    return-void
.end method
