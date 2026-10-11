.class public final Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;
.super Lcom/onyx/galaxy/note/common/view/BasePopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B\u0019\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0004\u0008?\u0010@J\u0008\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0002R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R$\u0010\u0019\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R(\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R8\u0010+\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020#0\"j\u0008\u0012\u0004\u0012\u00028\u0000`$8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R>\u00104\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00040,j\u0008\u0012\u0004\u0012\u00028\u0000`-8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001b\u0010:\u001a\u0002058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00028\u00000;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=\u00a8\u0006A"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;",
        "",
        "T",
        "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;",
        "",
        "onShow",
        "Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;",
        "event",
        "onOrientationChanged",
        "m",
        "l",
        "Landroidx/fragment/app/FragmentActivity;",
        "q",
        "Landroidx/fragment/app/FragmentActivity;",
        "uiContext",
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
        "",
        "t",
        "Ljava/util/List;",
        "getSelectorOptions",
        "()Ljava/util/List;",
        "setSelectorOptions",
        "(Ljava/util/List;)V",
        "selectorOptions",
        "Lkotlin/Function1;",
        "",
        "Lcom/onyx/galaxy/note/category/view/adapter/OptionTextMapper;",
        "u",
        "Lkotlin/jvm/functions/Function1;",
        "getOptionTextMapper",
        "()Lkotlin/jvm/functions/Function1;",
        "setOptionTextMapper",
        "(Lkotlin/jvm/functions/Function1;)V",
        "optionTextMapper",
        "Lkotlin/Function2;",
        "Lcom/onyx/galaxy/note/category/view/adapter/OptionSelectedCallback;",
        "v",
        "Lkotlin/jvm/functions/Function2;",
        "getOptionSelectedCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "setOptionSelectedCallback",
        "(Lkotlin/jvm/functions/Function2;)V",
        "optionSelectedCallback",
        "Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;",
        "w",
        "Lkotlin/Lazy;",
        "k",
        "()Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;",
        "x",
        "Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;",
        "adapter",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;Lcom/onyx/android/sdk/ui/LayoutParamRes;)V",
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
.field public final q:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Lkotlin/jvm/functions/Function1;
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

.field public v:Lkotlin/jvm/functions/Function2;
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

.field public final w:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/onyx/android/sdk/ui/LayoutParamRes;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/ui/LayoutParamRes;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParamRes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->q:Landroidx/fragment/app/FragmentActivity;

    .line 5
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->r:Lcom/onyx/android/sdk/ui/LayoutParamRes;

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->t:Ljava/util/List;

    .line 7
    sget-object p1, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$optionTextMapper$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$optionTextMapper$1;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->u:Lkotlin/jvm/functions/Function1;

    .line 8
    sget-object p1, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$optionSelectedCallback$1;->INSTANCE:Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$optionSelectedCallback$1;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->v:Lkotlin/jvm/functions/Function2;

    .line 9
    new-instance p1, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$binding$2;-><init>(Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->w:Lkotlin/Lazy;

    .line 10
    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;-><init>(Lcom/onyx/android/sdk/ui/LayoutParamRes;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->x:Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->k()Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 14
    invoke-virtual {p2}, Lcom/onyx/android/sdk/ui/LayoutParamRes;->getPopupBackgroundRes()I

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/ui/LayoutParamRes;->getPopupBackgroundRes()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/onyx/android/sdk/ui/LayoutParamRes;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    new-instance p2, Lcom/onyx/android/sdk/ui/LayoutParamRes;

    invoke-direct {p2}, Lcom/onyx/android/sdk/ui/LayoutParamRes;-><init>()V

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/onyx/android/sdk/ui/LayoutParamRes;)V

    return-void
.end method

.method public static final synthetic access$getLayoutParamRes$p(Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;)Lcom/onyx/android/sdk/ui/LayoutParamRes;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->r:Lcom/onyx/android/sdk/ui/LayoutParamRes;

    return-object p0
.end method

.method public static final synthetic access$getUiContext$p(Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->q:Landroidx/fragment/app/FragmentActivity;

    return-object p0
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->v:Lkotlin/jvm/functions/Function2;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->u:Lkotlin/jvm/functions/Function1;

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

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->s:Ljava/lang/Object;

    return-object p0
.end method

.method public final getSelectorOptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->t:Ljava/util/List;

    return-object p0
.end method

.method public final k()Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->w:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;

    return-object p0
.end method

.method public final l()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->k()Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;->optionsListView:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->q:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->k()Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;->optionsListView:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->x:Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->x:Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->u:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->setOptionTextMapper(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->x:Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->v:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->setOptionSelectedCallback(Lkotlin/jvm/functions/Function2;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->x:Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->s:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;->setSelectedOption(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->x:Lcom/onyx/galaxy/note/category/view/adapter/OptionsAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->s:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->k()Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;->optionsListView:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->r:Lcom/onyx/android/sdk/ui/LayoutParamRes;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/LayoutParamRes;->getPopupWidthRes()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->k()Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupOptionsSelectorBinding;->optionsListView:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    const-string v1, "optionsListView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$initView$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup$initView$1;-><init>(Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public final onOrientationChanged(Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/OrientationChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    return-void
.end method

.method public onShow()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->onShow()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->m()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->l()V

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->v:Lkotlin/jvm/functions/Function2;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->u:Lkotlin/jvm/functions/Function1;

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

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->s:Ljava/lang/Object;

    return-void
.end method

.method public final setSelectorOptions(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/popup/OptionsSelectorPopup;->t:Ljava/util/List;

    return-void
.end method
