.class final Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
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
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$5;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$5;->invoke(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$5;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$switchToPage(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.onyx.galaxy.note.category.data.NoteOutlineType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    .line 4
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$5;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->title:Lcom/onyx/android/sdk/ui/MediumTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$5;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->getTitleResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$5;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteSidebarBinding;->ivAdd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$initView$5;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->getFullScreen()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/category/data/NoteOutlineType;->TOC:Lcom/onyx/galaxy/note/category/data/NoteOutlineType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    .line 6
    sget-object p0, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment;->Companion:Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineFragment$Companion;->setLastOutlineType(Lcom/onyx/galaxy/note/category/data/NoteOutlineType;)V

    return-void
.end method
