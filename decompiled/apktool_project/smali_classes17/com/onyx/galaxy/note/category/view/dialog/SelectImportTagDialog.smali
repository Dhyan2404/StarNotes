.class public final Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectImportTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectImportTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,121:1\n1603#2,9:122\n1855#2:131\n1856#2:133\n1612#2:134\n350#2,7:154\n1#3:132\n65#4,16:135\n93#4,3:151\n*S KotlinDebug\n*F\n+ 1 SelectImportTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog\n*L\n62#1:122,9\n62#1:131\n62#1:133\n62#1:134\n75#1:154,7\n62#1:132\n82#1:135,16\n82#1:151,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0007*\u0001-\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0019\u0012\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001c\u00a2\u0006\u0004\u00081\u00102J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u001aR\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u0016\u0010\"R\u001b\u0010\'\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010!\u001a\u0004\u0008\u0012\u0010&R\u001b\u0010,\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010!\u001a\u0004\u0008*\u0010+R\u001b\u00100\u001a\u00020-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010!\u001a\u0004\u0008.\u0010/\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "dismiss",
        "j",
        "k",
        "",
        "title",
        "o",
        "r",
        "",
        "isSearch",
        "q",
        "p",
        "Landroid/content/Context;",
        "h",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
        "i",
        "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
        "manageTagContext",
        "",
        "Ljava/util/List;",
        "selectedTagIds",
        "Lkotlin/Function0;",
        "Lkotlin/jvm/functions/Function0;",
        "confirmCallback",
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;",
        "l",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;",
        "selectAdapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;",
        "m",
        "()Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;",
        "searchAdapter",
        "Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;",
        "n",
        "f",
        "()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;",
        "binding",
        "com/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$checkEmptyDataObserver$2$1",
        "g",
        "()Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$checkEmptyDataObserver$2$1;",
        "checkEmptyDataObserver",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSelectImportTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectImportTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,121:1\n1603#2,9:122\n1855#2:131\n1856#2:133\n1612#2:134\n350#2,7:154\n1#3:132\n65#4,16:135\n93#4,3:151\n*S KotlinDebug\n*F\n+ 1 SelectImportTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog\n*L\n62#1:122,9\n62#1:131\n62#1:133\n62#1:134\n75#1:154,7\n62#1:132\n82#1:135,16\n82#1:151,3\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/common/data/ManageTagContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/galaxy/note/common/data/ManageTagContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manageTagContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedTagIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirmCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->j:Ljava/util/List;

    iput-object p4, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->k:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$selectAdapter$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$selectAdapter$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->l:Lkotlin/Lazy;

    sget-object p1, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$searchAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$searchAdapter$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->m:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->n:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$checkEmptyDataObserver$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$checkEmptyDataObserver$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->o:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getManageTagContext$p(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)Lcom/onyx/galaxy/note/common/data/ManageTagContext;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    return-object p0
.end method

.method public static final synthetic access$getSelectAdapter(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelectedTagIds$p(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->j:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$search(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$selectionChangedCallback(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->p()V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->m(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->n(Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->l(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->dismiss()V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->getSelectedTagIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->saveSelectedTags(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->k:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->dismiss()V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    move-result-object p2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->onlyExpandSelection(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->handleSelect(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    :goto_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;->rvSelect:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->r()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->g()Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$checkEmptyDataObserver$2$1;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public final f()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->n:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;

    return-object p0
.end method

.method public final g()Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$checkEmptyDataObserver$2$1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->o:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$checkEmptyDataObserver$2$1;

    return-object p0
.end method

.method public final h()Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->m:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;

    return-object p0
.end method

.method public final i()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->l:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    return-object p0
.end method

.method public final j()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->submitTreeNodes()V

    return-void
.end method

.method public final k()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvCancel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/pem;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/pem;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;->tvOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvOk"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/qem;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/qem;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->g()Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$checkEmptyDataObserver$2$1;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;->rvSelect:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getSelectedTagIds()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getSelectedTagIds()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;->onlyExpandSelection(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;->rvSelect:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->h()Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;->rvSearch:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-wide/16 v3, 0x0

    new-instance v5, Lcom/sunia/HTREnginev2/rem;

    invoke-direct {v5, v2, p0}, Lcom/sunia/HTREnginev2/rem;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/chad/library/adapter4/util/ItemClickUtilsKt;->setOnDebouncedItemClick$default(Lcom/chad/library/adapter4/BaseQuickAdapter;JLcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;ILjava/lang/Object;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;->tieName:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthInputTextEdit;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/CreateTagInputFilter;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/view/CreateTagInputFilter;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/ui/ext/EditextExtKt;->addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$initView$lambda$8$$inlined$addTextChangedListener$default$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$initView$lambda$8$$inlined$addTextChangedListener$default$1;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->p()V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->q(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->i:Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getRootNode()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$search$nodes$1;

    invoke-direct {v3, p1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog$search$nodes$1;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "DFS"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodes$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->h()Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->q(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffc2

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final q(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;->rvSearch:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final r()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->f()Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogSelectImportTagBinding;->tieName:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthInputTextEdit;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
