.class final Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;->invoke$lambda$0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$updateSelected(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$checkEmptyData(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$getViewmodel(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->getSearchKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;->setKeyword(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/NoteOverviewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    new-instance v2, Lcom/onyx/galaxy/note/editor/ui/c;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/editor/ui/c;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)V

    invoke-virtual {v0, p1, v2}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    .line 5
    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->access$getViewmodel(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/NoteOverviewViewModel;->loadNoteTabData(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    :cond_0
    return-void
.end method
