.class final Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initTabLayout$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->l2()V
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
        "tab",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initTabLayout$1$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initTabLayout$1$1;->invoke(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.onyx.galaxy.note.category.data.TemplateDisplayType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initTabLayout$1$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getTemplateViewModel$p(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-ne p1, v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initTabLayout$1$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getTemplateViewModel$p(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setChangeContainsCover(Z)V

    .line 6
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initTabLayout$1$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$updateCoverPosition(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initTabLayout$1$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$updatePaperPosition(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initTabLayout$1$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getTemplateViewModel$p(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
