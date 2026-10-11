.class final Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1;->invoke(Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $position:I

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1$1;->$position:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1$1;->$position:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$updateEditCommentItem$1$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    .line 3
    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$setItemEnterEditMode(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V

    :cond_1
    return-void
.end method
