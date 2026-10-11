.class final Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->d1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchNoteFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,576:1\n256#2,2:577\n256#2,2:579\n*S KotlinDebug\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3\n*L\n247#1:577,2\n249#1:579,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "executing",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchNoteFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,576:1\n256#2,2:577\n256#2,2:579\n*S KotlinDebug\n*F\n+ 1 SearchNoteFragment.kt\ncom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3\n*L\n247#1:577,2\n249#1:579,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;->this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;->invoke$lambda$0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$updateLayoutParams(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;->this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->textInputEditTextViewName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "emptyView"

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;->this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->emptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;->this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {v2}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$getAdapter(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_1

    move v1, v3

    .line 4
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;->this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;->emptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :goto_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;->this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)Lcom/onyx/galaxy/note/databinding/FragmentSearchNoteBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;->this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/w;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/ui/w;-><init>(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 8
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment$initViewModel$3;->this$0:Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;->access$updateLoadingVisibility(Lcom/onyx/galaxy/note/category/ui/SearchNoteFragment;)V

    return-void
.end method
