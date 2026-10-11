.class public final Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->J1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002R\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "com/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;",
        "",
        "color",
        "",
        "onSelectColor",
        "onShowColorPicker",
        "onDismissColorPicker",
        "a",
        "b",
        "",
        "Ljava/util/List;",
        "oldColors",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic b:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->b:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->b:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getTemplateCoverColorAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->b:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getTemplateCoverColorAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->a()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->b:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$getTemplateViewModel$p(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getResourceList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/UpdateCoverResourceAction;

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/category/action/template/UpdateCoverResourceAction;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onDismissColorPicker()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->b()V

    return-void
.end method

.method public onSelectColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->b:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->access$changeCoverColors(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onShowColorPicker()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->a:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;->a()V

    return-void
.end method
