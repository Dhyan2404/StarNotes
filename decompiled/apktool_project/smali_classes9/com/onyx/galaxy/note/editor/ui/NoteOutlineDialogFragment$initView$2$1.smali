.class final Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment$initView$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->s0()V
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment$initView$2$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment$initView$2$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment$initView$2$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;->access$getFragment$p(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;)Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "fragment"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lcom/blankj/utilcode/util/FragmentUtils;->remove(Landroidx/fragment/app/Fragment;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment$initView$2$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
