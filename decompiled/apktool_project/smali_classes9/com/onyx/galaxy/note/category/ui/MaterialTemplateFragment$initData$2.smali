.class final Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;->w0()V
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
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->invoke$lambda$0(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->invoke$lambda$1(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;->access$getPaperCategoryTitleAdapter(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;->selectItem(Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;)V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;->access$checkEmptyData(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;->access$getPaperCategoryTitleAdapter(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;->findSelectedItem()Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;->access$getPaperCategoryTitleAdapter(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;->access$getMaterialViewModel(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->getPaperMaterialCategoryList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/g;

    invoke-direct {v3, v2, p1}, Lcom/onyx/galaxy/note/category/ui/g;-><init>(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;)V

    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;->access$getPaperMaterialCategoryAdapter(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/MaterialPaperCategoryAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;->access$getMaterialViewModel(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->getPaperMaterialCategoryList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/h;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/ui/h;-><init>(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)V

    invoke-virtual {p1, v0, v2}, Lcom/chad/library/adapter4/BaseDifferAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 5
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment$initData$2;->this$0:Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;->access$getTemplateViewModel(Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->checkPaperSelected$default(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;ILjava/lang/Object;)V

    return-void
.end method
