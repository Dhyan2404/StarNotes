.class public final Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "TT;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptionsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionsAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/OptionsAdapter\n+ 2 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n19#2,3:95\n22#2,4:100\n1855#3,2:98\n*S KotlinDebug\n*F\n+ 1 OptionsAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/OptionsAdapter\n*L\n61#1:95,3\n61#1:100,4\n61#1:98,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003B\u0011\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0018\u00a2\u0006\u0004\u00086\u00107J&\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0014J/\u0010\u0011\u001a\u00020\u00102\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00018\u0000H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u001f\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0015R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR$\u0010\"\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R8\u0010,\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020$0#j\u0008\u0012\u0004\u0012\u00028\u0000`%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R>\u00105\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00100-j\u0008\u0012\u0004\u0012\u00028\u0000`.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104\u00a8\u00068"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;",
        "",
        "T",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "holder",
        "position",
        "item",
        "",
        "onBindViewHolder",
        "(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Object;)V",
        "binding",
        "m",
        "(Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;Ljava/lang/Object;)V",
        "p",
        "o",
        "Lcom/onyx/android/sdk/ui/LayoutParamRes;",
        "r",
        "Lcom/onyx/android/sdk/ui/LayoutParamRes;",
        "layoutParamRes",
        "s",
        "Ljava/lang/Object;",
        "getSelectedOption",
        "()Ljava/lang/Object;",
        "setSelectedOption",
        "(Ljava/lang/Object;)V",
        "selectedOption",
        "Lkotlin/Function1;",
        "",
        "Lcom/onyx/galaxy/note/category/view/adapter/OptionTextMapper;",
        "t",
        "Lkotlin/jvm/functions/Function1;",
        "getOptionTextMapper",
        "()Lkotlin/jvm/functions/Function1;",
        "setOptionTextMapper",
        "(Lkotlin/jvm/functions/Function1;)V",
        "optionTextMapper",
        "Lkotlin/Function2;",
        "Lcom/onyx/galaxy/note/category/view/adapter/OptionSelectedCallback;",
        "u",
        "Lkotlin/jvm/functions/Function2;",
        "getOptionSelectedCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "setOptionSelectedCallback",
        "(Lkotlin/jvm/functions/Function2;)V",
        "optionSelectedCallback",
        "<init>",
        "(Lcom/onyx/android/sdk/ui/LayoutParamRes;)V",
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
        "SMAP\nOptionsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionsAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/OptionsAdapter\n+ 2 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n19#2,3:95\n22#2,4:100\n1855#3,2:98\n*S KotlinDebug\n*F\n+ 1 OptionsAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/OptionsAdapter\n*L\n61#1:95,3\n61#1:100,4\n61#1:98,2\n*E\n"
    }
.end annotation


# instance fields
.field public final r:Lcom/onyx/android/sdk/ui/LayoutParamRes;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;-><init>(Lcom/onyx/android/sdk/ui/LayoutParamRes;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/ui/LayoutParamRes;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/ui/LayoutParamRes;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layoutParamRes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->r:Lcom/onyx/android/sdk/ui/LayoutParamRes;

    .line 6
    sget-object p1, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter$optionTextMapper$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter$optionTextMapper$1;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->t:Lkotlin/jvm/functions/Function1;

    .line 7
    sget-object p1, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter$optionSelectedCallback$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter$optionSelectedCallback$1;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->u:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/ui/LayoutParamRes;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/onyx/android/sdk/ui/LayoutParamRes;

    invoke-direct {p1}, Lcom/onyx/android/sdk/ui/LayoutParamRes;-><init>()V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;-><init>(Lcom/onyx/android/sdk/ui/LayoutParamRes;)V

    return-void
.end method

.method public static final synthetic access$getLayoutParamRes$p(Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;)Lcom/onyx/android/sdk/ui/LayoutParamRes;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->r:Lcom/onyx/android/sdk/ui/LayoutParamRes;

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->n(Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->s:Ljava/lang/Object;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->s:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter$addItemEvent$lambda$1$$inlined$notifyItemChangedSafely$1;

    invoke-direct {v1, p0, p2}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter$addItemEvent$lambda$1$$inlined$notifyItemChangedSafely$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->indexesOf(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p2

    :try_start_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v0, "BaseQuickAdapter is detached"

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->t:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->u:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getOptionSelectedCallback()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "TT;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->u:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOptionTextMapper()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->t:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getSelectedOption()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->s:Ljava/lang/Object;

    return-object p0
.end method

.method public final m(Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string p1, "getRoot(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/qhk;

    invoke-direct {v3, p0, p2}, Lcom/sunia/HTREnginev2/qhk;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final o(Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_corner:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_top_corner:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white_bottom_corner:I

    goto :goto_0

    :cond_3
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->ripple_white:I

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Object;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;",
            ">;ITT;)V"
        }
    .end annotation

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    const-string v0, "getBinding(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->m(Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->p(Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->r:Lcom/onyx/android/sdk/ui/LayoutParamRes;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/ui/LayoutParamRes;->getItemHeightRes()I

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    const-string v0, "getRoot(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter$onCreateViewHolder$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter$onCreateViewHolder$1;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;)V

    invoke-static {p2, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->r:Lcom/onyx/android/sdk/ui/LayoutParamRes;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/ui/LayoutParamRes;->getItemTextSizeRes()I

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->r:Lcom/onyx/android/sdk/ui/LayoutParamRes;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/LayoutParamRes;->getItemTextSizeRes()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    .line 7
    iget-object p2, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;->displayText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p2, p3, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    :cond_1
    new-instance p0, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p0
.end method

.method public final p(Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->s:Ljava/lang/Object;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->t:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;->displayText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;->displayText:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;->selectedIcon:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v3, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;->bottomDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->o(Lcom/onyx/galaxy/note/databinding/ItemSelectorOptionBinding;Ljava/lang/Object;)V

    return-void
.end method

.method public final setOptionSelectedCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->u:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOptionTextMapper(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->t:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setSelectedOption(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->s:Ljava/lang/Object;

    return-void
.end method
