.class final Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;",
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
.field final synthetic $count:I

.field final synthetic $pageIndex:I

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;II)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->$count:I

    iput p3, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->$pageIndex:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->invoke(Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$isSearchMode(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$setAdapterCurrentIndex(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    return-void

    .line 4
    :cond_0
    iget p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->$count:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    const-string v1, "editorBundle"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->pageCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p1

    iget v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->$pageIndex:I

    if-ne p1, v0, :cond_3

    return-void

    .line 5
    :cond_3
    iget p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->$count:I

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->pageCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v0

    if-eq p1, v0, :cond_5

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v2}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->B1(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;ZILjava/lang/Object;)V

    return-void

    .line 7
    :cond_5
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$onVirtualDocViewInfoEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$setAdapterCurrentIndex(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    return-void
.end method
