.class final Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->E0()V
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
        "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShareResourceFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,257:1\n256#2,2:258\n*S KotlinDebug\n*F\n+ 1 ShareResourceFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2\n*L\n140#1:258,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShareResourceFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareResourceFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,257:1\n256#2,2:258\n*S KotlinDebug\n*F\n+ 1 ShareResourceFragment.kt\ncom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2\n*L\n140#1:258,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/datarepository/bean/ShareResourceDownloadBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->finishActivity(Landroidx/fragment/app/Fragment;)Lkotlin/Unit;

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->access$getResourceAdapter$p(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)Lcom/onyx/galaxy/note/datarepository/view/adapter/ShareResourceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvFileCount:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$string;->document_count:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/datarepository/ui/ShareResourceFragment;)Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/onyx/galaxy/note/databinding/FragmentShareResourceBinding;->tvContentTips:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvContentTips"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-le p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    .line 7
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
